import 'package:atwoz_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';

extension IntroduceMapper on IntroduceItem {
  IntroduceInfo toDomain() {
    return IntroduceInfo(
      id: id,
      profileUrl: profileUrl,
      title: title,
      yearOfBirth: yearOfBirth,
      nickname: nickname,
    );
  }
}
