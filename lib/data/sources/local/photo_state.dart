import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'permission_handler.dart'; // 통합된 권한 로직 사용

part 'photo_state.g.dart';

@riverpod
class Photo extends _$Photo with ChangeNotifier, WidgetsBindingObserver {
  final ImagePicker _imagePicker = ImagePicker();
  final PermissionHandler _permissionHandler = PermissionHandler();
  bool _isReturningFromSettings = false;

  @override
  XFile? build() {
    WidgetsBinding.instance.addObserver(this); // 라이프사이클 관찰 시작
    return null; // 초기 상태
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // 라이프사이클 관찰 중지
    _permissionHandler.dispose(); // PermissionHandler도 정리
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _isReturningFromSettings) {
      _isReturningFromSettings = false;
      // 설정에서 돌아온 후 권한 상태 확인
      _permissionHandler.checkPhotoPermissionStatus().then((isGranted) {
        if (!isGranted) {
          print("설정에서 돌아온 후에도 권한이 허용되지 않았습니다.");
        }
      });
    } else if (state == AppLifecycleState.inactive) {
      _isReturningFromSettings = true;
    }
  }

  Future<void> pickPhoto(ImageSource source) async {
    try {
      // 통합된 권한 요청 호출
      final permissionStatus =
          await _permissionHandler.checkPhotoPermissionStatus();
      if (!permissionStatus) {
        print("권한이 허용되지 않았습니다.");
        return;
      }

      // 사진 선택
      final photo = await _imagePicker.pickImage(source: source);
      if (photo != null) {
        state = photo; // 상태 업데이트
      } else {
        print("사진이 선택되지 않았습니다.");
      }
    } catch (e) {
      print("사진 선택 중 오류 발생: $e");
    }
  }
}
