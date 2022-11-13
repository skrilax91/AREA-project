import "../datasources/remote/area_api.dart";

import "../../domain/entities/result.dart";
import "../../domain/entities/short_service.dart";

import "../../domain/repositories/short_service_list_repository.dart";

class ShortServiceListRepositoryImpl implements ShortServiceListRepository {
  final AreaApi _areaApi;

  ShortServiceListRepositoryImpl({
    required AreaApi areaApi,
  }) : _areaApi = areaApi;

  @override
  Future<Result<List<ShortService>, Object>> get() async {
    try {
      final services = await _areaApi.getServices();
      return Result.value(services);
    } catch (e) {
      return Result.error(e);
    }
  }
}
