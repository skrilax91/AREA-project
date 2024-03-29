import 'package:area/src/data/models/area_model.dart';
import 'package:area/src/data/models/service.dart';
import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../models/auth_info_model.dart";
import '../../models/short_service_model.dart';
import "../../../domain/entities/auth_info.dart";
import "../../../domain/entities/short_service.dart";

import "http_client.dart";

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

  Future<List<ShortService>> getServices();

  Future<Service> getService(String uid);

  Future<void> createArea({
    required String token,
    required AreaModel area,
  });
}

final areaApiProvider = Provider<AreaApi>((ref) {
  return AreaApiImpl(
    httpClient: ref.watch(httpClientProvider),
  );
});
