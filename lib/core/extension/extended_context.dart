import 'package:flutter/material.dart';

/// BuildContext에 다양한 유틸리티 메서드를 추가합니다.
extension ExtendedContext on BuildContext {
  /// 앱 테마 및 색 반환
  ThemeData get theme => Theme.of(this);

  /// [AppThemeData.of(context).Palette]과 유사
  ColorScheme get palette => theme.colorScheme;

  /// 사용자 정의 테마 반환
  ThemeData get appTheme => Theme.of(this);

  /// 다크 모드 테마가 활성화되어 있는지 확인
  bool get isDarkTheme => theme.brightness == Brightness.dark;

  /// 가장 가까운 MediaQuery 조상의 platformBrightness를 반환하거나, 부모 조상이(ancestor) 존재하지 않는 경우 [Brightness.light]를 반환
  Brightness get platformBrightness => MediaQuery.platformBrightnessOf(this);

  /// 주어진 컨텍스트를 둘러싼 이 클래스의 가장 가까운 인스턴스의 상태를 반환
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);

  /// mediaQuerySize: 화면의 전체 크기를 반환
  Size get mediaQuerySize => MediaQuery.sizeOf(this);

  /// 화면 너비 반환
  double get screenWidth => mediaQuerySize.width;

  /// 화면 높이 반환
  double get screenHeight => mediaQuerySize.height;

  /// mediaQueryViewPadding: 안전 영역 패딩(e.g. notch)을 반환
  EdgeInsets get mediaQueryViewPadding => MediaQuery.viewPaddingOf(this);

  /// mediaQueryViewInsets: 키보드가 나타났을 때 화면 패딩을 반환
  EdgeInsets get mediaQueryViewInsets => MediaQuery.viewInsetsOf(this);

  /// mediaQueryOrientation: 가로 또는 세로 방향을 반환
  Orientation get mediaQueryOrientation => MediaQuery.orientationOf(this);

  /// [Theme.of(context).colorScheme]과 유사
  ColorScheme get colorScheme => theme.colorScheme;

  /// [Theme.of(context).textStyle]과 유사
  TextTheme get textStyle => theme.textTheme;

  /// 화면의 shortestSide를 반환
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// 기기가 가로 모드(Landscape mode) 모드인지 확인
  bool get isLandscape => mediaQueryOrientation == Orientation.landscape;

  /// 기기가 세로 모드(portrait mode)인지 검사
  bool get isPortrait => mediaQueryOrientation == Orientation.portrait;

  /// 화면의 가로와 세로 중 더 짧은 쪽의 길이가 600p보다 작은 경우 true 반환
  bool get isPhone => mediaQueryShortestSide < 600;

  /// 화면의 가로와 세로 중 더 짧은 쪽의 길이가 600p 이상인 경우 true 반환
  bool get isSmallTablet => mediaQueryShortestSide >= 600;

  /// 화면의 가로와 세로 중 더 짧은 쪽의 길이가 720p 이상인 경우 true 반환
  bool get isLargeTablet => mediaQueryShortestSide >= 720;

  /// 기기가 태블릿인지 검사
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// 화면 크기에 따라 특정 값을 반환하는 반응형 유틸리티
  T responsiveValue<T>({required T mobile, T? tablet, T? desktop, T? watch}) {
    final double deviceWidth = mediaQuerySize.shortestSide;

    if (deviceWidth >= 1200 && desktop != null) {
      return desktop;
    } else if (deviceWidth >= 600 && tablet != null) {
      return tablet;
    } else if (deviceWidth < 300 && watch != null) {
      return watch;
    } else {
      return mobile;
    }
  }
}

/// `Widget`을 Sliver 위젯으로 변환하는 확장 메서드
extension WidgetExtension on Widget {
  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(child: this);

  SliverPadding toSliverPadding(EdgeInsetsGeometry padding) =>
      SliverPadding(padding: padding, sliver: toSliverBox);
}
