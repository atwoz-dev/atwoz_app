import 'package:atwoz_app/core/util/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

const Map<String, String> _administrativeToCityMap = {
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

class LocationRepository {
  Future<Position> getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('위치 권한이 필요합니다.');
      }
    }
    return await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
      ),
    );
  }

  Future<String> getAddressFromPosition(Position pos) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(pos.latitude, pos.longitude);

    if (placemarks.isNotEmpty) {
      final p = placemarks.first;
      Log.d('가져온 위치는: $p');
      // 예시: "서울특별시 강남구" 형식
      return '${convertAdministrativeAreaToCity(p.administrativeArea)} ${p.locality ?? ''}'
          .trim();
    }
    return '';
  }

  String? convertAdministrativeAreaToCity(String? administrativeArea) {
    if (administrativeArea == null) return null;
    return _administrativeToCityMap[administrativeArea] ?? administrativeArea;
  }
}

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepository();
});
