import 'package:area/src/data/datasources/remote/area_api.dart';
import 'package:area/src/data/repositories/service_repository_impl.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import 'package:area/src/data/models/service.dart';
import "../entities/result.dart";

abstract class ServiceRepository {
  Future<Result<Service, Object>> get(String uid);
}

final serviceRepositoryProvider = Provider<ServiceRepository>((ref) {
  final areaApi = ref.read(areaApiProvider);
  return ServiceRepositoryImpl(areaApi: areaApi);
});
