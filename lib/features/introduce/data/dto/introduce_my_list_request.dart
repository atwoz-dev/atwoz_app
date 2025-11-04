import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_my_list_request.freezed.dart';
part 'introduce_my_list_request.g.dart';

@freezed
abstract class IntroduceMyListRequest with _$IntroduceMyListRequest {
  const factory IntroduceMyListRequest({required int lastId}) =
      _IntroduceMyListRequest;

  factory IntroduceMyListRequest.fromJson(Map<String, dynamic> json) =>
      _$IntroduceMyListRequestFromJson(json);
}
