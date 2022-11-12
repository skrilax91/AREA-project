// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceReactionParameter _$$_ServiceReactionParameterFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceReactionParameter(
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      required: json['required'] as bool,
      mutualized: (json['mutualized'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ServiceReactionParameterToJson(
        _$_ServiceReactionParameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'required': instance.required,
      'mutualized': instance.mutualized,
    };

_$_ServiceReaction _$$_ServiceReactionFromJson(Map<String, dynamic> json) =>
    _$_ServiceReaction(
      uid: json['uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      params: (json['params'] as List<dynamic>)
          .map((e) =>
              ServiceReactionParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServiceReactionToJson(_$_ServiceReaction instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'params': instance.params.map((e) => e.toJson()).toList(),
    };
