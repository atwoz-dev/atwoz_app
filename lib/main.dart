import 'dart:async';

import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/provider/default_provider_observer.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/shared_preference/shared_preference.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/app.dart';

void main() {
  runZonedGuarded(() async {
    App.preserveSplash(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
    );

    await Config.initialize();
    await Hive.initFlutter();
    await SharedPreferenceManager.initialize();

    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Hive.registerAdapter<UserResponse>(UserResponseAdapter());
    Hive.registerAdapter<GlobalUserProfile>(GlobalUserProfileAdapter());
    Hive.registerAdapter<InterviewInfo>(InterviewInfoAdapter());
    Hive.registerAdapter<MyProfileImage>(MyProfileImageAdapter());

    /// 앱 실행
    runApp(
      ProviderScope(
        observers: [DefaultProviderObserver()],
        child: const App(),
      ),
    );
  }, (error, stack) => Log.e('MAIN', errorObject: error, stackTrace: stack));
}
