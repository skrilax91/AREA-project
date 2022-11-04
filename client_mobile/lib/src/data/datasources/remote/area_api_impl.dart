part of "area_api.dart";

class AreaApiImpl implements AreaApi {
  final Dio _httpClient;
  final String _baseUrl = "http://localhost:8080";

  AreaApiImpl({
    required Dio httpClient,
  }) : _httpClient = httpClient;

  @override
  Future<AuthInfo> login({
    required String email,
    required String password,
  }) async {
    try {
      final json = await _get(
        "/auth/login",
        query: {
          "email": email,
          "password": password,
        },
      );
      return AuthInfoModel.fromJson(json).toEntity();
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> _get(
    String path, {
    String token = "",
    required Map<String, dynamic> query,
  }) async {
    final endpoint = _baseUrl + path;
    try {
      final response = await _httpClient.get(
        endpoint,
        queryParameters: query,
        options: Options(
          headers: {"X-Auth-token": token},
        ),
      );
      if (response.statusCode != 200) {
        throw Exception("Erro lmao");
      }
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
