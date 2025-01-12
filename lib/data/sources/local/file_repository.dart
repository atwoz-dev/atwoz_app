import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/base_repository.dart';

class FileRepository extends BaseRepository {
  FileRepository(Ref ref) : super(ref, '/com');

  Future<dynamic> saveTextEditorContent({
    String? refresh = 'refresh',
    List<File>? files,
    List<Map<String, dynamic>>? fileInfo,
    // saveData
    String? dataSeq,
    required String content,
  }) async {
    // Convert fileInfo and saveData to FormData
    var formData = FormData();

    // Add fileInfo if it's not null
    if (fileInfo != null && fileInfo.isNotEmpty) {
      formData.fields.addAll([
        MapEntry('fileInfo', jsonEncode(fileInfo)),
        const MapEntry('referer', 'atz'),
      ]);
    }

    // Add saveData
    var saveData = [
      {
        'seq': dataSeq ?? '',
        'data': content,
      }
    ];
    formData.fields.add(MapEntry('saveData', jsonEncode(saveData)));

    // Add refresh if it's not null
    if (refresh != null) {
      formData.fields.add(MapEntry('refresh', refresh));
    }

    // Add files if they are not null
    if (files != null && files.isNotEmpty) {
      for (var file in files) {
        var fileName = file.path.split('/').last;
        formData.files.add(MapEntry(
          'files',
          await MultipartFile.fromFile(file.path, filename: fileName),
        ));
      }
    }

    // Send the request
    var response = await apiService.postFormData(
      '/file-save',
      data: formData,
      requiresAuthToken: true,
    );

    return response;
  }
}
