// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceActionParameterCollection
    _$$_ServiceActionParameterCollectionFromJson(Map<String, dynamic> json) =>
        _$_ServiceActionParameterCollection(
          (json['serviceActionParameterList'] as List<dynamic>)
              .map((e) =>
                  ServiceActionParameter.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ServiceActionParameterCollectionToJson(
        _$_ServiceActionParameterCollection instance) =>
    <String, dynamic>{
      'serviceActionParameterList': instance.serviceActionParameterList,
    };

_$_ServiceActionParameter _$$_ServiceActionParameterFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceActionParameter(
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      required: json['required'] as bool,
      mutualized: (json['mutualized'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ServiceActionParameterToJson(
        _$_ServiceActionParameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'required': instance.required,
      'mutualized': instance.mutualized,
    };

_$_ServiceActionModelCollection _$$_ServiceActionModelCollectionFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceActionModelCollection(
      (json['serviceActionList'] as List<dynamic>)
          .map((e) => ServiceActionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServiceActionModelCollectionToJson(
        _$_ServiceActionModelCollection instance) =>
    <String, dynamic>{
      'serviceActionList': instance.serviceActionList,
    };

_$_ServiceActionModel _$$_ServiceActionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceActionModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      params: (json['params'] as List<dynamic>)
          .map(
              (e) => ServiceActionParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServiceActionModelToJson(
        _$_ServiceActionModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'params': instance.params,
    };
