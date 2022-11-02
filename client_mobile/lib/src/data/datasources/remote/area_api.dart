import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../domain/entities/auth_info.dart";

part "area_api_impl.dart";

abstract class AreaApi {
  Future<AuthInfo> login({
    required String email,
    required String password,
  });
}

final areaApiProvider = Provider<AreaApi>((ref) {
  return AreaApiImpl();
});
