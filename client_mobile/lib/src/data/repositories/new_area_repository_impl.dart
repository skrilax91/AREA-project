import 'package:area/src/domain/repositories/register_repository.dart';

import "../../domain/entities/result.dart";
import "../datasources/remote/area_api.dart";
import "../models/area_model.dart";
import "../../domain/repositories/new_area_repository.dart";

class NewAreaRepositoryImpl implements NewAreaRepository {
  final AreaApi _areaApi;

  NewAreaRepositoryImpl({
    required AreaApi areaApi,
  }) : _areaApi = areaApi;

  @override
  Future<Result<void, Object>> createArea({
    required String token,
    required AreaModel area,
  }) async {
    try {
      await _areaApi.createArea(token: token, area: area);
      return Result.value(true);
    } catch (e) {
      return Result.error(e);
    }
  }
}
