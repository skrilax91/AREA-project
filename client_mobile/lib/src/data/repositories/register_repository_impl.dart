import "../../domain/entities/result.dart";
import "../datasources/remote/area_api.dart";
import "../../domain/repositories/register_repository.dart";

class RegisterRepositoryImpl implements RegisterRepository {
  final AreaApi _areaApi;

  RegisterRepositoryImpl({
    required AreaApi areaApi,
  }) : _areaApi = areaApi;

  @override
  Future<Result<void, Object>> register({
    required String email,
    required String password,
  }) async {
    try {
      await _areaApi.register(email: email, password: password);
      return Result.value(true);
    } catch (e) {
      return Result.error(e);
    }
  }
}
