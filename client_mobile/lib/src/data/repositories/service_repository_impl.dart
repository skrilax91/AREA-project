import 'package:area/src/data/datasources/remote/area_api.dart';
import 'package:area/src/data/models/service.dart';
import 'package:area/src/domain/entities/result.dart';

import "../../domain/repositories/service_repository.dart";

class ServiceRepositoryImpl implements ServiceRepository {
  final AreaApi _areaApi;

  ServiceRepositoryImpl({
    required AreaApi areaApi,
  }) : _areaApi = areaApi;

  Future<Result<Service, Object>> get(String uid) async {
    try {
      final service = await _areaApi.getService(uid);
      return Result.value(service);
    } catch (e) {
      return Result.error(e);
    }
  }
}
