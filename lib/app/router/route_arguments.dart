import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/my/domain/model/editable_profile_image.dart';

sealed class RouteArguments {
  const RouteArguments();
}

class ProfileDetailArguments extends RouteArguments {
  const ProfileDetailArguments({
    required this.userId,
    this.fromMatchedProfile = false,
  });

  final int userId;
  final bool fromMatchedProfile;
}

class OnboardCertificationArguments extends RouteArguments {
  const OnboardCertificationArguments({
    required this.phoneNumber,
  });

  final String phoneNumber;
}

class UserByCategoryArguments extends RouteArguments {
  const UserByCategoryArguments({
    required this.category,
  });

  final IntroducedCategory category;
}

class MyProfileUpdateArguments extends RouteArguments {
  const MyProfileUpdateArguments({
    required this.profileType,
  });

  final String profileType;
}

class MyProfileImageUpdateArguments extends RouteArguments {
  const MyProfileImageUpdateArguments({
    required this.profileImages,
  });

  final List<EditableProfileImage?> profileImages;
}
