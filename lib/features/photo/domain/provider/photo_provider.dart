import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/permission_handler.dart';
import 'package:atwoz_app/features/photo/domain/usecase/photo_usecase.dart';
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
    return List.filled(Dimens.profileImageMaxCount, null); // 초기화 상태: 6개의 null 값
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
          Log.i("설정에서 돌아온 후에도 권한이 허용되지 않았습니다.");
        }
      });
    } else if (state == AppLifecycleState.inactive) {
      // 앱이 비활성 상태로 전환되었 때 (예를 들어 설정 같은 다른 앱에 갔을 때)
      _isReturningFromSettings = true;
    }
  }

  // 사진 다건 업로드
  Future<void> uploadPhotos(int index, List<XFile?> photos) async {
    state = photos;

    await ref.read(uploadPhotosUsecaseProvider).execute(state);
  }

// 사진 단건 업로드
  Future<void> uploadSinglePhoto(int index, XFile photo) async {
    state = [...state]..[index] = photo;

    await ref.read(uploadSinglePhotoUseCaseProvider).execute((index, photo));
  }

  // TODO: id 조회 안 돌리고 백엔드에서 받아오기
  // 사진 단건 삭제
  Future<void> deletePhoto(int index) async {
    // 삭제할 사진이 없으면 바로 종료
    final imageToDelete = state.elementAtOrNull(index);
    if (imageToDelete == null) return;

    // UI부터 즉시 업데이트
    state = [...state]..[index] = null;

    await ref.read(deletePhotoUsecaseProvider).execute(imageToDelete);
  }

  // 사진 선택
  Future<XFile?> pickPhoto(ImageSource source) async {
    try {
      final permissionStatus =
          await _permissionHandler.checkPhotoPermissionStatus();
      if (!permissionStatus) {
        Log.i("권한이 허용되지 않았습니다.");
        return null;
      }
      return await _imagePicker.pickImage(source: source);
    } catch (e) {
      Log.e("사진 선택 중 오류 발생: $e");
      return null;
    }
  }

  // 프로필 사진 불러오기
  Future<void> fetchProfileImages() async {
    state = await ref.read(fetchPhotoUsecaseProvider).execute();
  }

  // UI만 업데이트 (빈 공간이 있으면 앞으로 당기기)
  void updateState(int index, XFile? photo) {
    final updatedPhotos = [...state];

    if (photo != null) {
      // 새 사진을 추가하는 경우
      updatedPhotos[index] = photo;
    } else {
      // 사진을 삭제하는 경우 (null로 설정)
      updatedPhotos[index] = null;
    }
    // 빈 공간을 뒤로 밀어내기
    _compactPhotos(updatedPhotos);

    state = updatedPhotos;
  }

  // 빈 공간을 뒤로 밀어내기
  void _compactPhotos(List<XFile?> photos) {
    // null이 아닌 사진들만 추출
    final existPhotos = photos.where((photo) => photo != null).toList();

    // 리스트 초기화 (모든 요소를 null로)
    for (int i = 0; i < photos.length; i++) {
      photos[i] = null;
    }

    // 앞쪽부터 채우기
    for (int i = 0; i < existPhotos.length; i++) {
      photos[i] = existPhotos[i];
    }
  }
}
