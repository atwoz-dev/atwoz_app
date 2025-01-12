import 'package:flutter/foundation.dart';

// Config: 개발, 테스트, 운영 환경에 따라 다른 값을 적용하기 위해 앱의 설정 값들을 중앙에서 관리하기 위한 클래스
// abstract class: 인스턴스화 불가능
// Config 클래스는 단순히 설정 값만 제공하므로 클래스명으로 직접 접근하는 static 접근만 허용하도록 static class 사용
abstract class Config {
  // kDebugMode: dev 모드에서 true, release 빌드에서는 false
  // enableGeneralLog: 일반 로그를 출력할지 여부
  // isPrettyJson: JSON 로그를 보기 좋게 출력할지 여부
  // 즉 개발 모드에서만 일반 로그를 출력하고, JSON을 pretty하게 출력
  static const enableGeneralLog = kDebugMode;
  static const isPrettyJson = kDebugMode;

  // String.fromEnvironment('FLAVOR'): 빌드 시점에 환경 변수 읽기 e.g. --dart-define=FLAVOR=dev
  // isDevFlavor: flavor가 'dev'라는 문자열을 포함하면 true를 반환
  static const flavor = String.fromEnvironment('FLAVOR');
  static bool get isDevFlavor => flavor.toLowerCase().contains('dev');

  /// network 설정
  // baseUrl: 네트워크의 기본 URL 설정
  // timeout: 네트워크 요청의 타임아웃 시간(기본 10초)
  // maxRetries: 네트워크 요청 실패 시 재시도 횟수(기본 1회)
  static const baseUrl = String.fromEnvironment('BASE_URL');
  static const timeout = Duration(seconds: 10);
  static const maxRetries = 1;

  /// notifier observer
  /// riverpod 상태 관리 시 다양한 이벤트를 감지하고 로그를 출력할지 여부를 설정
  static const logOnNotifierChange = false; // 상태 변화 로그 (비활성화)
  static const logOnNotifierCreate = false;
  static const logOnNotifierClose = false;
  // logOnNotifierError: 에러 발생 시 로그. 개발 모드에서만 활성화
  static const logOnNotifierError = kDebugMode;
  static const logOnNotifierNotifierEvent = kDebugMode; // 이벤트 발생 시 로그
  static const logOnNotifierTransition = false;

  /// navigator observer
  static const enableErrorPage =
      kReleaseMode; // 에러 페이지 활성화 여부. release 빌드에서만 true
  static const enableNavigatorObserverLog =
      kDebugMode; // 네비게이션 출력 여부. dev 모드에서만 true

  /// log interceptor (kDebugMode: 개발 모드에서만 true)
  static const enableLogNetworkException = kDebugMode; // 네트워크 예외 발생 시 로그 출력 여부
  static const enableLogRequestInfo = kDebugMode; //  네트워크 요청 정보 로그 출력 여부

  /// Deep link
  // DEEP_LINK_URL은 빌드 시점에 설정되는 환경 변수
  static const deepLinkUrl = String.fromEnvironment('DEEP_LINK_URL');

  /// Notification
  // 알림 로그를 출력할지 여부. 개발 모드에서만 true
  static const enableNotificationLog = kDebugMode;

  /// Etc Service
  // Kakao 관련 API의 연락처 URL을 환경 변수로 받아온다.
  static const kakaoContactUrl = String.fromEnvironment("KAKAO_CONTACT_URL");

  // e.g. 개발 환경 빌드: flutter run --dart-define=FLAVOR=dev --dart-define=BASE_URL=https://dev.api.com (파일 써도 됨)
  // e.g. 프로덕션 환경 빌드: flutter run --release --dart-define=FLAVOR=prod --dart-define=BASE_URL=https://api.com (파일 써도 됨)
}
