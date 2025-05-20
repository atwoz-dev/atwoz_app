import 'dart:async';
import 'package:atwoz_app/app/app.dart';
import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/network/api_service_impl.dart';
import 'package:atwoz_app/core/provider/default_provider_observer.dart';
import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runZonedGuarded(() async {
    /// Splash 화면
    App.preserveSplash(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

    /// 환경 변수 초기화
    await Config.initialize();

    /// 기기 방향 세로로 고정
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Hive - 로컬 데이터베이스 초기화
    await Hive.initFlutter();

    // 파이어베이스 초기화
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
    } else {
      Firebase.app(); // 기존 초기화된 앱 사용
    }
    Hive.registerAdapter<UserResponse>(UserResponseAdapter());
    await LocalStorage().initialize();

    runApp(
      ProviderScope(
        observers: [DefaultProviderObserver()],
        child: const App(),
      ),
    );
  }, (error, stack) => Log.e('MAIN', errorObject: error, stackTrace: stack));
}
