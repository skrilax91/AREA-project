import 'package:freezed_annotation/freezed_annotation.dart';

part "short_service.freezed.dart";
part "short_service.g.dart";

@freezed
class ShortService with _$ShortService {
  const ShortService._();

  const factory ShortService({
    required String uid,
    required String name,
    @Default("") String description,
  }) = _ShortService;

  factory ShortService.fromJson(Map<String, dynamic> json) =>
      _$ShortServiceFromJson(json);
}
