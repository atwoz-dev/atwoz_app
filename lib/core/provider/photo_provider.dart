import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../util/permission_handler.dart'; // 통합된 권한 로직 사용

part 'photo_provider.g.dart';

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

  // 특정 인덱스의 사진을 업데이트하는 메서드.
  Future<void> updatePhoto(int index, XFile? photo) async {
    final updatedPhotos = List<XFile?>.from(state);
    updatedPhotos[index] = photo;
    state = updatedPhotos; // 올바르게 상태 업데이트
  }

// 사용자가 사진을 선택할 수 있도록 트리거하는 메서드
  Future<XFile?> pickPhoto(ImageSource source) async {
    try {
      final permissionStatus =
          await _permissionHandler.checkPhotoPermissionStatus();
      if (!permissionStatus) {
        print("권한이 허용되지 않았습니다.");
        return null;
      }

      final photo = await _imagePicker.pickImage(source: source);
      return photo;
    } catch (e) {
      print("사진 선택 중 오류 발생: $e");
      return null;
    }
  }
}
