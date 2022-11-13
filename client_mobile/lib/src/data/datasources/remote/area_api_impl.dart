part of "area_api.dart";

class AreaApiImpl implements AreaApi {
  final Dio _httpClient;
  final String _baseUrl = "http://localhost:8080/api";
  // final String _baseUrl = "http://10.0.2.2:8080/api";

  AreaApiImpl({
    required Dio httpClient,
  }) : _httpClient = httpClient;

  @override
  Future<AuthInfo> login({
    required String email,
    required String password,
  }) async {
    try {
      final json = await _post(
        "/auth/login",
        query: {
          "username": email,
          "password": password,
        },
      );
      return AuthInfoModel.fromJson(json).toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      final json = await _post("/auth/register", query: {
        "username": email,
        "password": password,
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ShortService>> getServices() async {
    try {
      final json = await _get("/services");
      return ShortServiceModelCollection.fromJson(json).toEntity();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Service> getService(String uid) async {
    try {
      final json = await _get("/services/$uid");
      return Service.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createArea({
    required String token,
    required AreaModel area,
  }) async {
    try {
      await _post(
        "/area",
        token: token,
        query: area.toJson(),
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> _get(
    String path, {
    String token = "",
    Map<String, dynamic>? query,
  }) async {
    final endpoint = _baseUrl + path;
    try {
      final response = await _httpClient.get(
        endpoint,
        queryParameters: query,
        options: Options(
          headers: {
            "X-Auth-Token": token,
            "Accept": "*/*",
          },
        ),
      );
      if (response.statusCode != 200) {
        throw Exception("Error ${response.statusCode}.");
      }
      return response.data;
    } catch (e) {
      if (e is DioError) {
        throw Exception("Network error ! ${e.message}");
      } else {
        rethrow;
      }
    }
  }

  Future<Map<String, dynamic>> _post(
    String path, {
    String token = "",
    Map<String, dynamic>? query,
  }) async {
    final endpoint = _baseUrl + path;
    try {
      final response = await _httpClient.post(
        endpoint,
        data: query,
        options: Options(
          headers: {
            "X-Auth-Token": token,
            "Accept": "*/*",
          },
        ),
      );
      if (response.statusCode != 200) {
        throw Exception("Error ${response.statusCode}.");
      }
      return response.data;
    } catch (e) {
      if (e is DioError) {
        throw Exception("Network error ! ${e.message}");
      } else {
        rethrow;
      }
    }
  }
}
