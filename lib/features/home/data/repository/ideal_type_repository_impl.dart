import 'package:atwoz_app/features/home/domain/domain.dart';

class IdealTypeRepositoryImpl implements IdealTypeRepository {
  Map<String, dynamic> sampleIdealType = {
    // TODO: api 연동 시 제거
    "minAge": 20,
    "maxAge": 30,
    "hobbies": ['등산/클라이밍', '맛집탐방', '쇼핑'],
    "regions": ['서울', '대구'],
    "religion": "none",
    "smokingStatus": "none",
    "drinkingStatus": "none"
  };

  @override
  Future<IdealType> getIdealType() async {
    // TODO: 테스트용 코드. api 연동 시 변경
    return IdealType.fromJson(sampleIdealType);
  }

  @override
  Future<void> setIdealType(IdealType idealType) async {
    // TODO: 테스트용 코드. api 연동 시 변경
    sampleIdealType = idealType.toJson();
  }
}
