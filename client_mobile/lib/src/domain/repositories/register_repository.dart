import "package:flutter_riverpod/flutter_riverpod.dart";

import "../entities/result.dart";
import "../../data/datasources/remote/area_api.dart";
import "../../data/repositories/register_repository_impl.dart";

abstract class RegisterRepository {
  Future<Result<void, Object>> register({
    required String email,
    required String password,
  });
}

final registerRepositoryProvider = Provider<RegisterRepository>((ref) {
  final areaApi = ref.read(areaApiProvider);
  return RegisterRepositoryImpl(areaApi: areaApi);
});
