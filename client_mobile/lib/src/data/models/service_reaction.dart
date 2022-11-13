import 'package:freezed_annotation/freezed_annotation.dart';

part "service_reaction.freezed.dart";
part "service_reaction.g.dart";

@freezed
class ServiceReactionParameter with _$ServiceReactionParameter {
  const ServiceReactionParameter._();

  const factory ServiceReactionParameter({
    required String name,
    required String type, // Is it relevant in this context ?
    required String description,
    required bool required,
    // Is it relevant in this context ?
    required List<String> mutualized,
  }) = _ServiceReactionParameter;

  factory ServiceReactionParameter.fromJson(Map<String, dynamic> json) =>
      _$ServiceReactionParameterFromJson(json);
}

@freezed
class ServiceReaction with _$ServiceReaction {
  const ServiceReaction._();

  const factory ServiceReaction({
    required String uid,
    required String name,
    required String description,
    required List<ServiceReactionParameter> params,
  }) = _ServiceReaction;

  factory ServiceReaction.fromJson(Map<String, dynamic> json) =>
      _$ServiceReactionFromJson(json);
}
