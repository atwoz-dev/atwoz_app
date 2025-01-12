import 'dart:ui';
import 'package:atwoz_app/app/provider/global_provider.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:atwoz_app/app/widget/error/error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:atwoz_app/core/config/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appNotifierAsync = ref.watch(globalProvider);
    final router = ref.watch(routerProvider);

    return appNotifierAsync.when(
      data: (appState) {
        // Splash 화면 종료
        removeSplash();

        return ScreenUtilInit(
          designSize: const Size(360, 800),
          minTextAdapt: true,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            scrollBehavior:
                const MaterialScrollBehavior().copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.trackpad,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            }),
            themeMode: ThemeMode.values[appState.themeModeIndex],
            theme: createThemeData(Palette.lightScheme),
            darkTheme: createThemeData(Palette.darkScheme),
            // locale: Locale(appState.languageCode),
            routerConfig: router,
          ),
        );
      },
      loading: () => const MaterialApp(
        home: Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      ),
      error: (err, stack) => MaterialApp(
        home: Config.enableErrorPage

            /// [AppErrorWidget] 존재
            ? ErrorPage(FlutterErrorDetails(
                exception: err,
                stack: stack,
              ))
            : Scaffold(
                body: Center(
                  child: Text('앱 로딩 실패: $err'),
                ),
              ),
      ),
    );
  }

  static WidgetsBinding? _widgetsBinding;

  static void preserveSplash({required WidgetsBinding widgetsBinding}) {
    _widgetsBinding = widgetsBinding;
    _widgetsBinding?.deferFirstFrame();
  }

  static void removeSplash() {
    if (_widgetsBinding == null) return;
    Future.delayed(
        const Duration(seconds: 1), _widgetsBinding?.allowFirstFrame);
    _widgetsBinding = null;
  }
}
