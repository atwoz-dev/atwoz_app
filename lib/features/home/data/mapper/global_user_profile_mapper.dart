import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/features/home/data/dto/home_profile_response_dto.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension CachedUserProfileMapper on HomeProfileResponseDto {
  CachedUserProfile toCachedUserProfile() {
    return CachedUserProfile(
      myUserId: statusInfo.memberId,
      activityStatus: statusInfo.activityStatus,
      isVip: statusInfo.isVip,
      isDatingExamSubmitted: statusInfo.isDatingExamSubmitted,
      primaryContactType: statusInfo.primaryContactType,
      nickname: basicInfo.nickname,
      gender: Gender.parse(basicInfo.gender),
      kakaoId: null, // Hive 저장 x
      age: basicInfo.age,
      height: basicInfo.height,
      phoneNumber: '', // Hive 저장 x
      job: Job.parse(profileInfo.job),
      education: Education.parse(profileInfo.highestEducation),
      city: profileInfo.city,
      district: profileInfo.district,
      mbti: profileInfo.mbti,
      smokingStatus: SmokingStatus.parse(profileInfo.smokingStatus),
      drinkingStatus: DrinkingStatus.parse(profileInfo.drinkingStatus),
      religion: Religion.parse(profileInfo.religion),
      hobbies: profileInfo.hobbies.map((e) => Hobby.parse(e)).toList(),
      interviewInfoView:
          interviewInfoView.map((e) => e.toInterviewInfo()).toList(),
    );
  }
}

extension InterviewInfoMapper on InterviewInfoDto {
  InterviewInfo toInterviewInfo() {
    return InterviewInfo(
      questionId: questionId,
      title: title,
      content: content,
    );
  }
}
