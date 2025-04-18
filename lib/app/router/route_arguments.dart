import 'package:atwoz_app/app/constants/enum.dart';

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

  final IntroducedCategoryEnum category;
}
