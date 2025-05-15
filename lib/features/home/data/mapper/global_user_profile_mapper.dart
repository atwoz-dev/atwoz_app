import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/home/data/dto/home_profile_response_dto.dart';

extension GlobalUserProfileMapper on HomeProfileResponseDto {
  GlobalUserProfile toGlobalUserProfile() {
    return GlobalUserProfile(
      activityStatus: statusInfo.activityStatus,
      isVip: statusInfo.isVip,
      nickname: basicInfo.nickname,
      gender: basicInfo.gender,
      yearOfBirth: basicInfo.yearOfBirth,
      height: basicInfo.height,
      phoneNumber: basicInfo.phoneNumber,
      job: profileInfo.job,
      highestEducation: profileInfo.highestEducation,
      city: profileInfo.city,
      district: profileInfo.district,
      mbti: profileInfo.mbti,
      smokingStatus: profileInfo.smokingStatus,
      drinkingStatus: profileInfo.drinkingStatus,
      religion: profileInfo.religion,
      hobbies: profileInfo.hobbies!,
      interviewInfoView: interviewInfoView
          .map(
            (e) => e.toInterviewInfo(),
          )
          .toList(),
    );
  }
}

extension InterviewInfoMapper on InterviewInfoDto {
  InterviewInfo toInterviewInfo() {
    return InterviewInfo(title: title, content: content);
  }
}
