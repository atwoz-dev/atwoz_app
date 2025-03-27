import 'dart:async';
import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/network/api_service_impl.dart';
import 'package:atwoz_app/core/provider/default_provider_observer.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/notification/data/fcm_service.dart';
import 'package:atwoz_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app/app.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Config.initialize();

    /// Splash 화면
    App.preserveSplash(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

    /// Firebase 초기화
    final firebaseOptions = await DefaultFirebaseOptions.currentPlatform;
    await Firebase.initializeApp(
      options: firebaseOptions,
    );
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    /// 환경 변수 초기화
    await Config.initialize();

    /// 기기 방향 세로로 고정
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Hive - 로컬 데이터베이스 초기화
    await Hive.initFlutter();
    Hive.registerAdapter<UserResponse>(UserResponseAdapter());

    final container = ProviderContainer();

    runApp(
      ProviderScope(
        observers: [DefaultProviderObserver()],
        child: App(),
      ),
    );

    // 앱 실행 후 dioService 초기화 (비동기 실행)
    Future.microtask(() async {
      final apiService = container.read(apiServiceProvider);
      await apiService.dioService.initializeCookieJar(); // 🚀 쿠키 저장소 초기화
    });
  }, (error, stack) => Log.e('MAIN', errorObject: error, stackTrace: stack));
}
