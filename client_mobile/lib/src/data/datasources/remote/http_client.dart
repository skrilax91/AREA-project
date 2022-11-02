import "package:dio/dio.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

abstract class HttpClient {}

class HttpClientDio implements HttpClient {
  final Dio _dio = Dio();
}

final httpClientProvider = Provider<HttpClient>((ref) {
  return HttpClientDio();
});
