import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart'; // .env 파일 로딩

// Config: 개발, 테스트, 운영 환경에 따라 다른 값을 적용하기 위한 클래스// abstract class: 인스턴스화 불가능
// abstract class: 인스턴스화 불가능
// Config 클래스는 단순히 설정 값만 제공하므로 클래스명으로 직접 접근하는 static 접근만 허용하도록 static class 사용
abstract class Config {
  /// 로그 설정
  // kDebugMode: dev 모드에서 true, release 빌드에서는 false
  // enableGeneralLog: 일반 로그를 출력할지 여부
  // isPrettyJson: JSON 로그를 보기 좋게 출력할지 여부
  // 즉 개발 모드에서만 일반 로그를 출력하고, JSON을 pretty하게 출력
  static const enableGeneralLog = kDebugMode;
  static const isPrettyJson = kDebugMode;

  /// network 설정
  // baseUrl: 네트워크의 기본 URL 설정
  // timeout: 네트워크 요청의 타임아웃 시간(기본 10초)
  // maxRetries: 네트워크 요청 실패 시 재시도 횟수(기본 1회)
  static String get baseUrl => dotenv.get('BASE_URL', fallback: '');
  static const timeout = Duration(seconds: 10);
  static const maxRetries = 1;

  /// notifier observer
  // logOnNotifierChange: 노티파이어 변경 로그 출력 여부
  // logOnNotifierCreate: 노티파이어 생성 로그 출력 여부
  // logOnNotifierClose: 노티파이어 닫기 로그 출력 여부
  // logOnNotifierError: 노티파이어 오류 로그 출력 여부
  // logOnNotifierNotifierEvent: 노티파이어 이벤트 로그 출력 여부
  // logOnNotifierTransition: 노티파이어 전환 로그 출력 여부
  static const logOnNotifierChange = false;
  static const logOnNotifierCreate = false;
  static const logOnNotifierClose = false;
  static const logOnNotifierError = kDebugMode; // 개발 모드에서만 로그 출력
  static const logOnNotifierNotifierEvent = kDebugMode; // 개발 모드에서만 로그 출력
  static const logOnNotifierTransition = false;

  /// navigator observer
  // enableNavigatorObserverLog: 네비게이터 옵저버 로그 출력 여부
  // enableErrorPage: 에러 페이지 표시 여부
  static const enableErrorPage = kReleaseMode; // release 모드에서만 표시
  static const enableNavigatorObserverLog = kDebugMode; // 개발 모드에서만 로그 출력

  /// log interceptor
  // enableLogNetworkException: 네트워크 예외 로그 출력 여부
  // enableLogRequestInfo: 요청 정보 로그 출력 여부
  static const enableLogNetworkException = kDebugMode;
  static const enableLogRequestInfo = kDebugMode;

  /// Deep link
  // deepLinkUrl: 딥링크 URL 설정
  static String get deepLinkUrl => dotenv.get('DEEP_LINK_URL', fallback: '');

  /// Notification
  // enableNotificationLog: 알림 로그 출력 여부
  static const enableNotificationLog = kDebugMode; // 개발 모드에서만 로그 출력

  /// Etc Service
  static String get kakaoContactUrl =>
      dotenv.get('KAKAO_CONTACT_URL', fallback: '');

  /// 초기화 메서드
  static Future<void> initialize() async {
    await dotenv.load(fileName: 'dev.env'); // .env 파일 로드
  }
}
