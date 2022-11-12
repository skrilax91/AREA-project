import 'package:freezed_annotation/freezed_annotation.dart';

part "area_model.freezed.dart";
part "area_model.g.dart";

@freezed
class AreaConfigServiceActionModel with _$AreaConfigServiceActionModel {
  const AreaConfigServiceActionModel._();

  const factory AreaConfigServiceActionModel({
    required String uid,
    @Default({}) Map<String, dynamic> params,
  }) = _AreaConfigServiceActionModel;

  factory AreaConfigServiceActionModel.fromJson(Map<String, dynamic> json) =>
      _$AreaConfigServiceActionModelFromJson(json);
}

@freezed
class AreaConfigServiceTriggerModel with _$AreaConfigServiceTriggerModel {
  const AreaConfigServiceTriggerModel._();

  const factory AreaConfigServiceTriggerModel({
    required String uid,
    @Default({}) Map<String, dynamic> params,
  }) = _AreaConfigServiceTriggerModel;

  factory AreaConfigServiceTriggerModel.fromJson(Map<String, dynamic> json) =>
      _$AreaConfigServiceTriggerModelFromJson(json);
}

@freezed
class AreaConfigServiceModel with _$AreaConfigServiceModel {
  const AreaConfigServiceModel._();

  const factory AreaConfigServiceModel({
    required String uid,
    @Default([]) List<AreaConfigServiceTriggerModel> triggers,
    @Default([]) List<AreaConfigServiceActionModel> actions,
  }) = _AreaConfigServiceModel;

  factory AreaConfigServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AreaConfigServiceModelFromJson(json);
}

@freezed
class AreaConfigModel with _$AreaConfigModel {
  const AreaConfigModel._();

  const factory AreaConfigModel({
    required List<AreaConfigServiceModel> services,
  }) = _AreaConfigModel;

  factory AreaConfigModel.fromJson(Map<String, dynamic> json) =>
      _$AreaConfigModelFromJson(json);
}

@freezed
class AreaModel with _$AreaModel {
  const AreaModel._();

  const factory AreaModel({
    required String name,
    required String description,
    required AreaConfigModel config,
  }) = _AreaModel;

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);
}
