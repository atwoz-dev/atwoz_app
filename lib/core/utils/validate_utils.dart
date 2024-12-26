import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

/// TextFormField 검증
// TODO: 나중에 백엔드랑 맞춰야 함 습습...
class ValidateUtils {
  const ValidateUtils._();

  // 비밀번호가 숫자, 소문자, 댇문자, 특수문자를 포함해야 함.
  static final RegExp password =
      RegExp(r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)');
  static final RegExp email = RegExp(r'^(([\w-\.]+@([\w-]+\.)+[\w-]{2,4}))$');
  // 휴대폰은 000-0000-0000 형식인데 하이픈은 optional
  static final RegExp phoneMobile = RegExp(r'^\d{3}-?\d{4}-?\d{4}$');
  // dateDMY: DD-MM-YYYY 또는 DD/MM/YYYY 형태
  static final RegExp dateDMY = RegExp(
      r'([0-2][0-9]|3[0-1])?(\\|\/|\-|\.|\,|\s)?(0[1-9]|1[0-2])(\\|\/|\-|\.|\,|\s)([0-9]{4}|[0-9]{2})');
  // dateYMD: YYYY-MM-DD 또는 YYYY/MM/DD 형태
  static final RegExp dateYMD = RegExp(
      r'([0-9]{4}|[0-9]{2})(\\|\/|\-|\.|\,|년|\s)\s?(0?[1-9]|1[0-2])(\\|\/|\-|\.|\,|월|\s)\s?([1-2][0-9]|0?[1-9]|3[0-1])?');
  // 위 두 날짜 형식 중 하나라도 만족하면 true
  static final RegExp date = RegExp('${dateDMY.pattern}|${dateYMD.pattern}');
  // prices: 숫자 및 화폐 기호 검증. e.g. ₩1,000, 1,000원
  static final RegExp prices = RegExp(
      r'(^(\d{1,3}[.,])+(\d{1,3})$|[₩wW]\s?(\d{1,3}[.,])*(\d{1,3})|(\d{1,3}[.,])*(\d{1,3})\s?[원])');

  static late AppLocalizations l10n; // 다국어 문자열에 접근하기 위한 객체로, 외부에서 설정됨

  static String? validIdentity(String? value, bool? validId, String? message) {
    if (validId != null && !validId) {
      return message;
    }
    return null;
  }

  static String? validPassword(String? value) {
    if (value != null) {
      return null;
    }
    return null;
  }

  static String? validRePassword(String? value, String oldPass) {
    if (value != oldPass) {
      // 입력값이 기존 비밀번호와 일치하지 않으면 오류 메시지를 반환
      return l10n.user_password_not_match;
    }
    return null;
  }

  // 비어있으면 user_nickname_duplicate
  // 길이가 3~20자 범위를 벗어나면 user_nickname_correct_format
  // 서버 검증에서 실패하면 커스텀 메시지 반환
  static String? validNickname(
      String? value, bool? validNickname, String? message) {
    if (value == null || value.trim().isEmpty) {
      return l10n.user_nickname_duplicate;
    } else if (value.length < 3 || value.length > 20) {
      return l10n.user_nickname_correct_format(3, 20);
    } else if (validNickname != null && !validNickname) {
      return message;
    }
    return null;
  }

  static String? validEmail(String? value) {
    if (value == null) {
      return l10n.validation_email_format;
    } else if (!email.hasMatch(value)) {
      return l10n.validation_email_format;
    }
    return null;
  }

  static String? validPhoneNumber(
      String? value, bool? validPhone, String? message) {
    if (!phoneMobile.hasMatch(value ?? '')) {
      return l10n.validation_format;
    } else if (validPhone != null && !validPhone) {
      return message;
    }
    return null;
  }

  static String? validRegisterationPath(String? value) {
    if (value == null || value.trim().isEmpty) {
      return l10n.input_subscription_path;
    }
    return null;
  }

  static String? validOtp(String? value, bool? validOtp, String? message) {
    if (value == null || value.trim().isEmpty) {
      return l10n.input_otp;
    } else if (validOtp != null && !validOtp) {
      return message;
    }
    return null;
  }

  static String? validSelectImage(String? value) {
    if (value == null || value.trim().isEmpty) {
      return l10n.validation_select_image;
    }
    return null;
  }

  static String? validName(String? value) {
    value = value?.trim() ?? '';
    if (value.isEmpty || value.length > 50) {
      return l10n.validation_name_length(1, 50);
    }
    return null;
  }

  static String? validDescription(String? value) {
    value = value?.trim() ?? '';
    if (value.length > 500) {
      return l10n.validation_description_length(1, 500);
    }
    return null;
  }

  static String? validNotEmpty(String? value) {
    if (value?.trim().isEmpty ?? false) {
      return l10n.input_field;
    }
    return null;
  }

  // 날짜가 yyyy-MM-dd 형식인지 확인
  // parseStrict를 사용해 엄격하게 검증
  static bool isDate(String? input) {
    try {
      DateFormat('yyyy-MM-dd').parseStrict(input ?? '');
      return true;
    } catch (e) {
      return false;
    }
  }
}
