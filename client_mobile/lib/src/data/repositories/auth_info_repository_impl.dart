import "../datasources/remote/area_api.dart";
import "../../domain/entities/result.dart";
import "../../domain/entities/auth_info.dart";
import "../../domain/repositories/auth_info_repository.dart";

class AuthInfoRepositoryImpl implements AuthInfoRepository {
  final AreaApi _areaApi;

  AuthInfoRepositoryImpl({
    required AreaApi areaApi,
  }) : _areaApi = areaApi;

  @override
  Future<Result<AuthInfo, Object>> login({
    required String email,
    required String password,
  }) async {
    try {
      final authInfo = await _areaApi.login(email: email, password: password);
      return Result.value(authInfo);
    } catch (e) {
      return Result.error(e);
    }
  }
}
