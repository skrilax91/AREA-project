import "package:freezed_annotation/freezed_annotation.dart";

part "field.freezed.dart";

@freezed
class Field with _$Field {
  const factory Field({
    required String value,
    String? errorMessage,
    @Default(false) bool isValid,
  }) = _Field;
}
