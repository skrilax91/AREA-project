import 'package:area/src/data/models/area_model.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../entities/result.dart";
import "../../data/datasources/remote/area_api.dart";

import "../../data/repositories/new_area_repository_impl.dart";

abstract class NewAreaRepository {
  Future<Result<void, Object>> createArea({
    required String token,
    required AreaModel area,
  });
}

final newAreaRepositoryProvider = Provider<NewAreaRepository>((ref) {
  final areaApi = ref.read(areaApiProvider);
  return NewAreaRepositoryImpl(areaApi: areaApi);
});
