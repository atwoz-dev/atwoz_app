import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/home/data/dto/home_profile_response_dto.dart';

extension GlobalUserProfileMapper on HomeProfileResponseDto {
  GlobalUserProfile toGlobalUserProfile() {
    // 필수 프로필 항목 누락 시 예외 처리
    if (statusInfo.activityStatus == null ||
        statusInfo.isVip == null ||
        basicInfo.nickname == null ||
        basicInfo.gender == null ||
        basicInfo.yearOfBirth == null ||
        basicInfo.height == null ||
        profileInfo.job == null ||
        profileInfo.highestEducation == null ||
        profileInfo.city == null ||
        profileInfo.district == null ||
        profileInfo.mbti == null ||
        profileInfo.smokingStatus == null ||
        profileInfo.drinkingStatus == null ||
        profileInfo.religion == null ||
        profileInfo.hobbies == null) {
      throw Exception('필수 프로필 항목 누락: 유효하지 않은 서버 응답');
    }
    return GlobalUserProfile(
        activityStatus: statusInfo.activityStatus!,
        isVip: statusInfo.isVip!,
        nickname: basicInfo.nickname!,
        gender: basicInfo.gender!,
        yearOfBirth: basicInfo.yearOfBirth!,
        height: basicInfo.height!,
        phoneNumber: basicInfo.phoneNumber,
        job: profileInfo.job!,
        highestEducation: profileInfo.highestEducation!,
        city: profileInfo.city!,
        district: profileInfo.district!,
        mbti: profileInfo.mbti!,
        smokingStatus: profileInfo.smokingStatus!,
        drinkingStatus: profileInfo.drinkingStatus!,
        religion: profileInfo.religion!,
        hobbies: profileInfo.hobbies!,
        interviewInfoView: interviewInfoView
            .map((e) => InterviewInfo(title: e.title, content: e.content))
            .toList());
  }
}
