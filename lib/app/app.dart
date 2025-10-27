import 'dart:ui';

import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/notification/notification_model.dart';
import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();

  static void preserveSplash({required WidgetsBinding widgetsBinding}) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: ValueListenableBuilder(
        valueListenable: FirebaseManager().activeFcmNotification,
        builder: (context, value, child) {
          if (value != null) {
            _handleFcmNotification(value);
          }
          return child ?? Container();
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.trackpad,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            },
          ),
          themeMode: ThemeMode.light,
          theme: createThemeData(Palette.lightScheme),
          darkTheme: createThemeData(Palette.darkScheme),
          routerConfig: ref.watch(routerProvider),
        ),
      ),
    );
  }

  Future<void> _initialize() async {
    await ref.read(localStorageProvider).initialize();
    final router = ref.read(routerProvider);
    await ref.read(globalProvider.notifier).initProfile();
    if (ref.read(globalProvider).profile.isDefault) {
      router.goNamed(AppRoute.onboard.name);
    } else {
      router.goNamed(AppRoute.mainTab.name);
    }

    FlutterNativeSplash.remove();
  }

  void _handleFcmNotification(FcmNotification data) {
    final userId = data.senderId;
    if (!data.notificationType.isConnectedProfile) return;
    if (userId == null) {
      assert(
        false,
        'notification type [${data.notificationType}] need to senderId',
      );
      Log.e(
        'notification type [${data.notificationType}] requires senderId but was null',
      );
      return;
    }
    rootNavigatorKey.currentContext?.goNamed(
      AppRoute.profile.name,
      extra: ProfileDetailArguments(userId: userId),
    );
  }
}
