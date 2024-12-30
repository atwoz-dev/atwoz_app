import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photo_state.g.dart'; // build_runner를 통해 생성되는 파일

@riverpod
class Photo extends _$Photo {
  final ImagePicker _imagePicker = ImagePicker(); // ImagePicker 인스턴스 생성

  @override
  XFile? build() => null; // 초기 상태는 null로 설정

  /// 사진을 선택하는 메서드
  /// [source]: 카메라 또는 갤러리에서 이미지를 선택
  Future<void> pickPhoto(ImageSource source) async {
    try {
      final photo = await _imagePicker.pickImage(source: source); // 이미지를 선택
      state = photo; // 상태 업데이트
    } catch (e) {
      state = null; // 에러 발생 시 상태를 null로 설정
    }
  }
}
