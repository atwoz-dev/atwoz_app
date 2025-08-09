import 'package:atwoz_app/core/util/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

// 위치 관련 예외 클래스들
class LocationPermissionDeniedException implements Exception {
  final String message;
  LocationPermissionDeniedException([this.message = '위치 권한이 필요합니다.']);
}

class LocationNotFoundException implements Exception {
  final String message;
  LocationNotFoundException([this.message = '위치 정보를 찾을 수 없습니다.']);
}

class LocationRepository {
  // 상수 분리
  static const _highAccuracySettings = LocationSettings(
    accuracy: LocationAccuracy.high,
  );

  Future<Position> getCurrentPosition() async {
    final permission = await _checkAndRequestPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      throw LocationPermissionDeniedException();
    }

    return await Geolocator.getCurrentPosition(
      locationSettings: _highAccuracySettings,
    );
  }

  Future<LocationPermission> _checkAndRequestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission;
  }

  Future<String> getAddressFromPosition(Position pos) async {
    try {
      final placemarks = await placemarkFromCoordinates(
        pos.latitude,
        pos.longitude,
      );

      if (placemarks.isEmpty) {
        throw LocationNotFoundException();
      }

      return _formatAddress(placemarks.first);
    } catch (e) {
      Log.e('주소 변환 실패: $e');
      rethrow;
    }
  }

  String _formatAddress(Placemark placemark) {
    final administrativeArea = placemark.administrativeArea;
    final subAdministrativeArea = placemark.subAdministrativeArea;

    if (administrativeArea == null) {
      Log.w('administrativeArea가 없습니다.');
      return '';
    }

    final convertedCity = CityConverter.toShortName(administrativeArea);

    // 세종시는 도시명만 반환
    if (administrativeArea.contains('세종')) {
      return convertedCity;
    }

    // 서울, 부산은 우편번호로 구 정보 찾기
    if (administrativeArea.contains('서울') ||
        administrativeArea.contains('부산')) {
      final district = DistrictMapper.getDistrictByPostalCode(
        administrativeArea,
        placemark.postalCode,
      );
      return district.isNotEmpty ? '$convertedCity $district' : convertedCity;
    }

    // 그 외 지역은 administrativeArea + subAdministrativeArea (시/군/구)
    return subAdministrativeArea != null && subAdministrativeArea.isNotEmpty
        ? '$convertedCity $subAdministrativeArea'
        : convertedCity;
  }
}

// 도시명 변환 유틸리티 클래스
class CityConverter {
  static const Map<String, String> _administrativeToCityMap = {
    '서울특별시': '서울',
    '부산광역시': '부산',
    '대구광역시': '대구',
    '인천광역시': '인천',
    '광주광역시': '광주',
    '대전광역시': '대전',
    '울산광역시': '울산',
    '세종특별자치시': '세종',
    '경기도': '경기도',
    '강원특별자치도': '강원도',
    '충청북도': '충청북도',
    '충청남도': '충청남도',
    '전라북도': '전라북도',
    '전라남도': '전라남도',
    '경상북도': '경상북도',
    '경상남도': '경상남도',
    '제주특별자치도': '제주',
  };

  static String toShortName(String? administrativeArea) {
    if (administrativeArea == null) return '';
    return _administrativeToCityMap[administrativeArea] ?? administrativeArea;
  }
}

// 우편번호-구 매핑 클래스
class DistrictMapper {
  // 서울 우편번호 매핑 (5자리 신 우편번호 기준)
  static const Map<String, List<Range>> _seoulDistrictRanges = {
    '종로구': [Range(03000, 03199)],
    '중구': [Range(04500, 04639)],
    '용산구': [Range(04300, 04449)],
    '성동구': [Range(04700, 04799)],
    '광진구': [Range(04900, 05199)],
    '동대문구': [Range(02400, 02699)],
    '중랑구': [Range(02000, 02299)],
    '성북구': [Range(02700, 02899)],
    '강북구': [Range(01000, 01299)],
    '도봉구': [Range(01300, 01499)],
    '노원구': [Range(01600, 01999)],
    '은평구': [Range(03300, 03599)],
    '서대문구': [Range(03600, 03799)],
    '마포구': [Range(03900, 04299)],
    '양천구': [Range(07900, 08199)],
    '강서구': [Range(07500, 07799)],
    '구로구': [Range(08200, 08499)],
    '금천구': [Range(08500, 08699)],
    '영등포구': [Range(07200, 07499)],
    '동작구': [Range(06900, 07199)],
    '관악구': [Range(08700, 08899)],
    '서초구': [Range(06500, 06799)],
    '강남구': [Range(06000, 06499)],
    '송파구': [Range(05500, 05999)],
    '강동구': [Range(05200, 05499)],
  };

  // 부산 우편번호 매핑
  static const Map<String, List<Range>> _busanDistrictRanges = {
    '중구': [Range(48900, 49099)],
    '서구': [Range(49200, 49299)],
    '동구': [Range(48700, 48799)],
    '영도구': [Range(49000, 49199)],
    '부산진구': [Range(47100, 47399)],
    '동래구': [Range(47700, 47899)],
    '남구': [Range(48400, 48699)],
    '북구': [Range(46500, 46699)],
    '해운대구': [Range(48000, 48199)],
    '사하구': [Range(49300, 49599)],
    '금정구': [Range(46200, 46399)],
    '강서구': [Range(46700, 46799)],
    '연제구': [Range(47500, 47699)],
    '수영구': [Range(48200, 48299)],
    '사상구': [Range(46900, 47099)],
    '기장군': [Range(46000, 46199)],
  };

  static String getDistrictByPostalCode(String city, String? postalCode) {
    if (postalCode == null || postalCode.isEmpty) return '';

    // 5자리 우편번호 처리
    final code = int.tryParse(postalCode);
    if (code == null) return '';

    if (city.contains('서울')) {
      return _findDistrict(code, _seoulDistrictRanges);
    } else if (city.contains('부산')) {
      return _findDistrict(code, _busanDistrictRanges);
    }

    return '';
  }

  static String _findDistrict(int code, Map<String, List<Range>> ranges) {
    for (final entry in ranges.entries) {
      for (final range in entry.value) {
        if (range.contains(code)) {
          return entry.key;
        }
      }
    }
    return '';
  }
}

class Range {
  final int start;
  final int end;

  const Range(this.start, this.end);

  bool contains(int value) => value >= start && value <= end;
}

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepository();
});
