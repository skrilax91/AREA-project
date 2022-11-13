import "package:flutter_riverpod/flutter_riverpod.dart";

import "../entities/result.dart";
import "../entities/auth_info.dart";
import "../../data/datasources/remote/area_api.dart";
import "../../data/repositories/auth_info_repository_impl.dart";

abstract class AuthInfoRepository {
  Future<Result<AuthInfo, Object>> login({
    required String email,
    required String password,
  });
}

final authInfoRepositoryProvider = Provider<AuthInfoRepository>((ref) {
  final areaApi = ref.watch(areaApiProvider);
  return AuthInfoRepositoryImpl(areaApi: areaApi);
});
