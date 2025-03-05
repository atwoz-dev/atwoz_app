import 'package:image_picker/image_picker.dart';

enum ImageSourceType { memory, file, network, unknown }

extension XFileExtension on XFile {
  ImageSourceType get sourceType {
    final path = this.path; // `this`는 생략 가능

    if (path.startsWith('http')) return ImageSourceType.network;
    if (path.startsWith('/')) return ImageSourceType.file;
    if (path.isNotEmpty) return ImageSourceType.memory;
    return ImageSourceType.unknown;
  }
}
