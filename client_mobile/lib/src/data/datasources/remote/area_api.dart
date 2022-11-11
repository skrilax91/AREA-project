import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "http_client.dart";
import "../../models/user_model.dart";
import "../../models/auth_info_model.dart";
import "../../../domain/entities/user.dart";
import "../../../domain/entities/auth_info.dart";

part "area_api_impl.dart";

abstract class AreaApi {
  Future<AuthInfo> login({
    required String email,
    required String password,
  });

  Future<void> register({
    required String email,
    required String password,
  });
}

final areaApiProvider = Provider<AreaApi>((ref) {
  return AreaApiImpl(
    httpClient: ref.watch(httpClientProvider),
  );
});
