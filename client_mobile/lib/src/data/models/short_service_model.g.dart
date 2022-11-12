// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShortServiceModelCollection _$$_ShortServiceModelCollectionFromJson(
        Map<String, dynamic> json) =>
    _$_ShortServiceModelCollection(
      shortServiceModelCollection:
          (json['shortServiceModelCollection'] as List<dynamic>)
              .map((e) => ShortServiceModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_ShortServiceModelCollectionToJson(
        _$_ShortServiceModelCollection instance) =>
    <String, dynamic>{
      'shortServiceModelCollection':
          instance.shortServiceModelCollection.map((e) => e.toJson()).toList(),
    };

_$_ShortServiceModel _$$_ShortServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ShortServiceModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$_ShortServiceModelToJson(
        _$_ShortServiceModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
    };
