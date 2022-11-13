import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/short_service.dart';

part "short_service_model.freezed.dart";
part "short_service_model.g.dart";

@freezed
class ShortServiceModelCollection with _$ShortServiceModelCollection {
  const ShortServiceModelCollection._();

  const factory ShortServiceModelCollection(
    @JsonKey(name: 'services')
        List<ShortServiceModel> shortServiceModelCollection,
  ) = _ShortServiceModelCollection;

  factory ShortServiceModelCollection.fromJson(Map<String, dynamic> json) =>
      _$ShortServiceModelCollectionFromJson(json);

  List<ShortService> toEntity() {
    return shortServiceModelCollection.map((e) => e.toEntity()).toList();
  }
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

  ShortService toEntity() {
    return ShortService(
      uid: uid,
      name: name,
      description: description,
    );
  }
}
