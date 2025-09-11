import 'dart:ui';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:atwoz_app/core/notification/firebase_manager.dart';
import 'package:atwoz_app/core/notification/notification_model.dart';
import 'package:atwoz_app/features/my/data/dto/server_notification_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();

  static WidgetsBinding? _widgetsBinding;

  static void preserveSplash({required WidgetsBinding widgetsBinding}) {
    _widgetsBinding = widgetsBinding;
    _widgetsBinding?.deferFirstFrame();
  }

  static void removeSplash() {
    if (_widgetsBinding == null) return;
    Future.delayed(
      const Duration(seconds: 1),
      _widgetsBinding?.allowFirstFrame,
    );
    _widgetsBinding = null;
  }
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  void dispose() {
    FirebaseManager().removeMessageListener(_handleFcmNotification);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        }),
        themeMode: ThemeMode.light,
        theme: createThemeData(Palette.lightScheme),
        darkTheme: createThemeData(Palette.darkScheme),
        routerConfig: ref.watch(routerProvider),
      ),
    );
  }

  Future<void> _initialize() async {
    final router = ref.read(routerProvider);

    await ref.read(globalNotifierProvider.notifier).initProfile();
    if (ref.read(globalNotifierProvider).profile.isDefault) {
      router.goNamed(AppRoute.onboard.name);
    } else {
      router.goNamed(AppRoute.mainTab.name);
    }

    FirebaseManager().addMessageListener(_handleFcmNotification);
    App.removeSplash();
  }

  void _handleFcmNotification(FcmNotification data) {
    final userId = data.senderId;
    if (!data.notificationType.isConnectedProfile) return;
    if (userId == null) {
      assert(false,
          'notification type [${data.notificationType}] need to senderId');
      return;
    }
    navigate(
      context,
      route: AppRoute.profile,
      extra: ProfileDetailArguments(
        userId: userId,
      ),
    );
  }
}
