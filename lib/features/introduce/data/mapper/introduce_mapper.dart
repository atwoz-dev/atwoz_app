import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_detail_response.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_detail.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

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

extension IntroduceDetailMapper on IntroduceDetailDTO {
  IntroduceDetail toDomain() {
    return IntroduceDetail(
      title: title,
      content: content,
      memberBasicInfo: memberBasicInfoDto.toDomain(),
      like: FavoriteType.tryParse(like),
      profileExchangeStatus: ProfileExchangeStatus.parse(profileExchangeStatus),
    );
  }
}

extension MemberBasicInfoMapper on MemberBasicInfoDTO {
  MemberBasicInfo toDomain() {
    return MemberBasicInfo(
      memberId: memberId,
      age: age,
      nickname: nickname,
      profileImageUrl: profileImageUrl,
      city: city,
      district: district,
      mbti: mbti,
      hobbies: hobbies,
    );
  }
}
