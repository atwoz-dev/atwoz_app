import 'package:atwoz_app/core/util/permission_handler.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photo_provider.g.dart';

enum PhotoUpdateAction { upload, delete }

@riverpod
class Photo extends _$Photo with ChangeNotifier, WidgetsBindingObserver {
  final ImagePicker _imagePicker =
      ImagePicker(); // 이미지 소스를 선택(카메라, 갤러리 등)하고 이미지를 가져오는 역할
  final PermissionHandler _permissionHandler = PermissionHandler();
  bool _isReturningFromSettings =
      false; // 사용자가 앱 설정 화면에서 돌아왔는지 여부를 추적하는 플래그. 권한이 변경되었는지 확인하는 데 사용.

  @override
  List<XFile?> build() {
    WidgetsBinding.instance.addObserver(this); // 라이프사이클 관찰 시작
    fetchProfileImages(); // 앱 시작 시 프로필 사진 불러오기
    return List.filled(6, null); // 초기화 상태: 6개의 null 값
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // 라이프사이클 관찰 중지
    _permissionHandler.dispose(); // PermissionHandler도 정리
    super.dispose();
  }

  @override
  // 앱의 라이프사이클 상태가 변경될 때 호출
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _isReturningFromSettings) {
      // 앱이 활성 상태로 돌아왔을 때 (예를 들어 설정 화면에서 돌아왔을 때)
      _isReturningFromSettings = false;
      // 설정에서 돌아온 후 권한 상태 확인
      _permissionHandler.checkPhotoPermissionStatus().then((isGranted) {
        if (!isGranted) {
          print("설정에서 돌아온 후에도 권한이 허용되지 않았습니다.");
        }
      });
    } else if (state == AppLifecycleState.inactive) {
      // 앱이 비활성 상태로 전환되었 때 (예를 들어 설정 같은 다른 앱에 갔을 때)
      _isReturningFromSettings = true;
    }
  }

  // 사진 업로드
  Future<void> uploadPhoto(int index, XFile? photo) async {
    final updatedPhotos = List<XFile?>.from(state);
    updatedPhotos[index] = photo;
    state = updatedPhotos;
    await ref.read(authUsecaseProvider).uploadProfilePhotos(state);
  }

  // 사진 삭제
  Future<void> deletePhoto(int index) async {
    final profileImages =
        await ref.read(authUsecaseProvider).fetchProfileImages();
    if (profileImages == null || profileImages.data.isEmpty) {
      print("❌ 삭제할 사진의 ID를 찾을 수 없음 (등록된 사진 없음)");
      return;
    }

    // 삭제할 사진의 ID 찾기 (state[index]의 path가 S3 URL과 일치하는 데이터)
    final imageToDelete = profileImages.data.firstWhere(
      (image) => image.url == state[index]?.path,
    );

    await ref.read(authUsecaseProvider).deleteProfilePhoto(imageToDelete.id);

    final updatedPhotos = List<XFile?>.from(state);
    updatedPhotos[index] = null;
    state = updatedPhotos;
  }

  Future<XFile?> pickPhoto(ImageSource source) async {
    try {
      final permissionStatus =
          await _permissionHandler.checkPhotoPermissionStatus();
      if (!permissionStatus) {
        print("권한이 허용되지 않았습니다.");
        return null;
      }
      return await _imagePicker.pickImage(source: source);
    } catch (e) {
      print("사진 선택 중 오류 발생: $e");
      return null;
    }
  }

  Future<void> fetchProfileImages() async {
    final response = await ref.read(authUsecaseProvider).fetchProfileImages();
    if (response == null) return;

    final sortedPhotos = List.from(response.data)
      ..sort((a, b) => a.order.compareTo(b.order));
    final updatedPhotos = List<XFile?>.filled(6, null);
    for (int i = 0; i < sortedPhotos.length; i++) {
      updatedPhotos[i] = XFile(sortedPhotos[i].url);
    }
    state = updatedPhotos;
  }
}
