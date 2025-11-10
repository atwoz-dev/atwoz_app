import 'package:atwoz_app/features/introduce/data/data.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "introduce_info.freezed.dart";

@freezed
abstract class IntroduceInfo with _$IntroduceInfo {
  const factory IntroduceInfo({
    required List<String> preferredCities,
    required int fromAge,
    required int toAge,
    required String gender,
    required int lastId,
  }) = _IntroduceInfo;
}

class IntroduceListFetchUseCase {
  final Ref ref;

  const IntroduceListFetchUseCase(this.ref);

  Future<List<IntroduceItem>> call() async {
    final response = await ref
        .read(introduceRepositoryProvider)
        .getIntroduceList();
    return response;
  }
}

// IntroduceListResponseDto -> List<IntroduceInfo> 변경
List<IntroduceInfo> convertToDomain(List<IntroduceItem> items) {
  return [];
}
