import 'package:freezed_annotation/freezed_annotation.dart';

part "service_action.freezed.dart";
part "service_action.g.dart";

@freezed
class ServiceActionParameter with _$ServiceActionParameter {
  const ServiceActionParameter._();

  const factory ServiceActionParameter({
    required String name,
    required String type, // Todo : Replace with actual class
    required String description,
    required bool required,
    // imo should be -> depends_on[] and conflicts[], and maybe dependencies[]
    // mutualized means nothing
    required List<String> mutualized,
  }) = _ServiceActionParameter;

  factory ServiceActionParameter.fromJson(Map<String, dynamic> json) =>
      _$ServiceActionParameterFromJson(json);
}

@freezed
class ServiceActionModel with _$ServiceActionModel {
  const ServiceActionModel._();

  const factory ServiceActionModel({
    required String uid,
    required String name,
    required String description,
    required List<ServiceActionParameter> params,
  }) = _ServiceActionModel;

  factory ServiceActionModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceActionModelFromJson(json);
}
