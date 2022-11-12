import "package:flutter_riverpod/flutter_riverpod.dart";

import "../entities/result.dart";
import "../entities/short_service.dart";
import "../../data/datasources/remote/area_api.dart";
import "../../data/repositories/short_service_list_repository_impl.dart";

abstract class ShortServiceListRepository {
  Future<Result<List<ShortService>, Object>> get();
}

final shortServiceListRepositoryProvider =
    Provider<ShortServiceListRepository>((ref) {
  final areaApi = ref.read(areaApiProvider);
  return ShortServiceListRepositoryImpl(areaApi: areaApi);
});
