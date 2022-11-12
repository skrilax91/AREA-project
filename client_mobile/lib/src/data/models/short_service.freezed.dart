// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'short_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortService _$ShortServiceFromJson(Map<String, dynamic> json) {
  return _ShortService.fromJson(json);
}

/// @nodoc
mixin _$ShortService {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortServiceCopyWith<ShortService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortServiceCopyWith<$Res> {
  factory $ShortServiceCopyWith(
          ShortService value, $Res Function(ShortService) then) =
      _$ShortServiceCopyWithImpl<$Res, ShortService>;
  @useResult
  $Res call({String uid, String name, String description});
}

/// @nodoc
class _$ShortServiceCopyWithImpl<$Res, $Val extends ShortService>
    implements $ShortServiceCopyWith<$Res> {
  _$ShortServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortServiceCopyWith<$Res>
    implements $ShortServiceCopyWith<$Res> {
  factory _$$_ShortServiceCopyWith(
          _$_ShortService value, $Res Function(_$_ShortService) then) =
      __$$_ShortServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, String description});
}

/// @nodoc
class __$$_ShortServiceCopyWithImpl<$Res>
    extends _$ShortServiceCopyWithImpl<$Res, _$_ShortService>
    implements _$$_ShortServiceCopyWith<$Res> {
  __$$_ShortServiceCopyWithImpl(
      _$_ShortService _value, $Res Function(_$_ShortService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_ShortService(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortService extends _ShortService {
  const _$_ShortService(
      {required this.uid, required this.name, this.description = ""})
      : super._();

  factory _$_ShortService.fromJson(Map<String, dynamic> json) =>
      _$$_ShortServiceFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ShortService(uid: $uid, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortService &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortServiceCopyWith<_$_ShortService> get copyWith =>
      __$$_ShortServiceCopyWithImpl<_$_ShortService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortServiceToJson(
      this,
    );
  }
}

abstract class _ShortService extends ShortService {
  const factory _ShortService(
      {required final String uid,
      required final String name,
      final String description}) = _$_ShortService;
  const _ShortService._() : super._();

  factory _ShortService.fromJson(Map<String, dynamic> json) =
      _$_ShortService.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ShortServiceCopyWith<_$_ShortService> get copyWith =>
      throw _privateConstructorUsedError;
}
