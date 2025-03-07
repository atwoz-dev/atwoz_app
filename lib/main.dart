import 'dart:async';
import 'package:atwoz_app/app/app.dart';
import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/network/api_service_impl.dart';
import 'package:atwoz_app/core/provider/default_provider_observer.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// Splash 화면 유지
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
    Hive.registerAdapter<UserResponse>(UserResponseAdapter());

    final container = ProviderContainer();
    final apiService = container.read(apiServiceProvider);

    /// 🚀 `initialize()`를 한 번만 실행
    apiService.initialize();

    runApp(
      ProviderScope(
        observers: [DefaultProviderObserver()],
        child: App(),
      ),
    );
  }, (error, stack) => Log.e('MAIN', errorObject: error, stackTrace: stack));
}
