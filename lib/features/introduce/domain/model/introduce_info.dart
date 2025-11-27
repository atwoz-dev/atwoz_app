import 'package:atwoz_app/features/introduce/data/mapper/introduce_mapper.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_info.freezed.dart';

@freezed
abstract class IntroduceInfo with _$IntroduceInfo {
  const factory IntroduceInfo({
    required int id,
    required int yearOfBirth,
    required String nickname,
    required String profileUrl,
    required String title,
    required DateTime createdAt,
  }) = _IntroduceInfo;
}

class IntroduceListFetchUseCase {
  final Ref ref;

  const IntroduceListFetchUseCase(this.ref);

  Future<List<IntroduceInfo>> call({
    List<String>? preferredCities,
    int? fromAge,
    int? toAge,
    String? gender,
    int? lastId,
  }) async {
    final response = await ref
        .read(introduceRepositoryProvider)
        .getIntroduceList(
          preferredCities: preferredCities,
          fromAge: fromAge,
          toAge: toAge,
          gender: gender,
          lastId: lastId,
        );
    return response
        .map(
          (e) => e.toDomain(),
        )
        .toList();
  }
}
