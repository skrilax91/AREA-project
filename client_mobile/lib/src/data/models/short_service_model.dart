import 'package:freezed_annotation/freezed_annotation.dart';

part "short_service_model.freezed.dart";
part "short_service_model.g.dart";

@freezed
class ShortServiceModelCollection with _$ShortServiceModelCollection {
  const ShortServiceModelCollection._();

  const factory ShortServiceModelCollection({
    required List<ShortServiceModel> shortServiceModelCollection,
  }) = _ShortServiceModelCollection;

  factory ShortServiceModelCollection.fromJson(Map<String, dynamic> json) =>
      _$ShortServiceModelCollectionFromJson(json);
}

@freezed
class ShortServiceModel with _$ShortServiceModel {
  const ShortServiceModel._();

  const factory ShortServiceModel({
    required String uid,
    required String name,
    @Default("") String description,
  }) = _ShortServiceModel;

  factory ShortServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ShortServiceModelFromJson(json);
}
