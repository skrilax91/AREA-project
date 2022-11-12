import 'package:freezed_annotation/freezed_annotation.dart';

import 'service_action.dart';
import 'service_reaction.dart';

part "service.freezed.dart";
part "service.g.dart";

@freezed
class Service with _$Service {
  const Service._();

  const factory Service({
    required String uid,
    required String name,
    required String description,
    required List<ServiceAction> actions,
    required List<ServiceReaction> reactions,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
