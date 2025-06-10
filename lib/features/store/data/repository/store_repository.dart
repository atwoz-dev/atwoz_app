import 'dart:convert';

import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storeRepositoryProvider = Provider<StoreRepository>((ref) {
  return StoreRepository(ref);
});

class StoreRepository extends BaseRepository {
  StoreRepository(Ref ref) : super(ref, '/admin');

// 상점 하트 사용내역
  Future storeHistory() async {
    try {
      Map<String, dynamic> queryParameters = {
        'condition': jsonEncode({
          "productId": "string",
          "name": "string",
          "createdDateGoe": "2025-06-03",
          "createdDateLoe": "2025-06-03"
        }),
        'pageable': jsonEncode({
          "page": 0,
          "size": 1,
          "sort": ["string"]
        })
      };

      final res = await apiService.getJson(
        '$path/heart-purchase-options',
        queryParameters: queryParameters,
        requiresAuthToken: true,
      );

      debugPrint("데이터 체킹 ::: $res");

      return res;
    } catch (error) {
      debugPrint('하트 사용내역 api 에러 : $error');
    }
  }
}

final storeHistoryProvider = FutureProvider((ref) async {
  final repository = ref.watch(storeRepositoryProvider);
  return await repository.storeHistory();
});
