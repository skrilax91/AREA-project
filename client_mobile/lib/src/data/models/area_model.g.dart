// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AreaConfigServiceActionModel _$$_AreaConfigServiceActionModelFromJson(
        Map<String, dynamic> json) =>
    _$_AreaConfigServiceActionModel(
      uid: json['uid'] as String,
      params: json['params'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$_AreaConfigServiceActionModelToJson(
        _$_AreaConfigServiceActionModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'params': instance.params,
    };

_$_AreaConfigServiceTriggerModel _$$_AreaConfigServiceTriggerModelFromJson(
        Map<String, dynamic> json) =>
    _$_AreaConfigServiceTriggerModel(
      uid: json['uid'] as String,
      params: json['params'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$_AreaConfigServiceTriggerModelToJson(
        _$_AreaConfigServiceTriggerModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'params': instance.params,
    };

_$_AreaConfigServiceModel _$$_AreaConfigServiceModelFromJson(
        Map<String, dynamic> json) =>
    _$_AreaConfigServiceModel(
      uid: json['uid'] as String,
      triggers: (json['triggers'] as List<dynamic>?)
              ?.map((e) => AreaConfigServiceTriggerModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => AreaConfigServiceActionModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AreaConfigServiceModelToJson(
        _$_AreaConfigServiceModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'triggers': instance.triggers,
      'actions': instance.actions,
    };

_$_AreaConfigModel _$$_AreaConfigModelFromJson(Map<String, dynamic> json) =>
    _$_AreaConfigModel(
      services: (json['services'] as List<dynamic>)
          .map(
              (e) => AreaConfigServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AreaConfigModelToJson(_$_AreaConfigModel instance) =>
    <String, dynamic>{
      'services': instance.services,
    };

_$_AreaModel _$$_AreaModelFromJson(Map<String, dynamic> json) => _$_AreaModel(
      name: json['name'] as String,
      description: json['description'] as String,
      config: AreaConfigModel.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AreaModelToJson(_$_AreaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'config': instance.config,
    };
