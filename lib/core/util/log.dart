import 'dart:async';
import 'dart:convert';
import 'dart:developer' as dev;

import 'package:atwoz_app/core/config/config.dart';

/// 로그 출력을 위한 유틸리티 클래스
class Log {
  // _(): 프라이빗 생성자로 외부에서 클래스 인스턴스를 만들 수 없도록 함
  // 유틸리티 클래스라서 정적 메서드만 제공할 거임
  const Log._();

  // Config.enableGeneralLog: 앱 설정에서 true인 경우에만 로그를 출력하도록 설정
  // 타고 들어가보면 enableGeneralLog가 개발 모드에서만 true라 개발 모드일 때만 로그가 출력됨
  static const _enableLog = Config.enableGeneralLog;

  // 디버그 로그 출력 메서드 Log.d()
  static void d(
    Object? message, {
    String? name,
    DateTime? time,
  }) {
    log('💡 $message', name: name ?? '', time: time);
  }

  // 에러 로그 출력 메서드 Log.e()
  static void e(
    Object? errorMessage, {
    String? name,
    Object? errorObject,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    log(
      '💢 $errorMessage',
      name: name ?? '',
      error: errorObject,
      stackTrace: stackTrace,
      time: time,
    );
  }

  // JSON 포맷팅 메서드 Log.prettyJson()
  static String prettyJson(Object json) {
    // Config.isPrettyJson가 true인 경우에만 포맷팅을 적용
    if (!Config.isPrettyJson) {
      return json.toString();
    }

    const encoder = JsonEncoder.withIndent('\t'); // 들여쓰기 적용

    return encoder.convert(json);
  }

  // 공통 로그 처리 메서드 Log.log(): 모든 로그 출력의 기반 메서드가 된다.
  static void log(
    String message, {
    int level = 0,
    String name = '',
    DateTime? time,
    int? sequenceNumber,
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (_enableLog) {
      dev.log(
        message,
        name: name,
        time: time,
        sequenceNumber: sequenceNumber,
        level: level,
        zone: zone,
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
