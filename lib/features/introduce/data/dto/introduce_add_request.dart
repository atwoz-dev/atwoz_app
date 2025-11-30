import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_add_request.freezed.dart';
part 'introduce_add_request.g.dart';

@freezed
abstract class IntroduceAddRequest with _$IntroduceAddRequest {
  const factory IntroduceAddRequest({
    required String title,
    required String content,
  }) = _IntroduceAddRequest;

  factory IntroduceAddRequest.fromJson(Map<String, dynamic> json) =>
      _$IntroduceAddRequestFromJson(json);
}
