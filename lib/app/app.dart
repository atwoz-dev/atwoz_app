import 'dart:ui';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/router/routing.dart';
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

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    // static 메서드 호출
    App.removeSplash();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);

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
        theme: createThemeData(Palette.lightScheme),
        darkTheme: createThemeData(Palette.darkScheme),
        routerConfig: router,
      ),
    );
  }
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    final router = ref.read(routerProvider);

    await ref.read(globalUserProfileNotifierProvider.notifier).initialize();
    if (ref.read(globalUserProfileNotifierProvider).isDefault) {
      router.goNamed(AppRoute.onboard.name);
    } else {
      router.goNamed(AppRoute.mainTab.name);
    }
    App.removeSplash();
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
}
