// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceReactionParameter _$ServiceReactionParameterFromJson(
    Map<String, dynamic> json) {
  return _ServiceReactionParameter.fromJson(json);
}

/// @nodoc
mixin _$ServiceReactionParameter {
  String get name => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // Is it relevant in this context ?
  String get description => throw _privateConstructorUsedError;
  bool get required =>
      throw _privateConstructorUsedError; // Is it relevant in this context ?
  List<String> get mutualized => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceReactionParameterCopyWith<ServiceReactionParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceReactionParameterCopyWith<$Res> {
  factory $ServiceReactionParameterCopyWith(ServiceReactionParameter value,
          $Res Function(ServiceReactionParameter) then) =
      _$ServiceReactionParameterCopyWithImpl<$Res, ServiceReactionParameter>;
  @useResult
  $Res call(
      {String name,
      String type,
      String description,
      bool required,
      List<String> mutualized});
}

/// @nodoc
class _$ServiceReactionParameterCopyWithImpl<$Res,
        $Val extends ServiceReactionParameter>
    implements $ServiceReactionParameterCopyWith<$Res> {
  _$ServiceReactionParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? required = null,
    Object? mutualized = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      mutualized: null == mutualized
          ? _value.mutualized
          : mutualized // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceReactionParameterCopyWith<$Res>
    implements $ServiceReactionParameterCopyWith<$Res> {
  factory _$$_ServiceReactionParameterCopyWith(
          _$_ServiceReactionParameter value,
          $Res Function(_$_ServiceReactionParameter) then) =
      __$$_ServiceReactionParameterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String description,
      bool required,
      List<String> mutualized});
}

/// @nodoc
class __$$_ServiceReactionParameterCopyWithImpl<$Res>
    extends _$ServiceReactionParameterCopyWithImpl<$Res,
        _$_ServiceReactionParameter>
    implements _$$_ServiceReactionParameterCopyWith<$Res> {
  __$$_ServiceReactionParameterCopyWithImpl(_$_ServiceReactionParameter _value,
      $Res Function(_$_ServiceReactionParameter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? required = null,
    Object? mutualized = null,
  }) {
    return _then(_$_ServiceReactionParameter(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      mutualized: null == mutualized
          ? _value._mutualized
          : mutualized // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceReactionParameter extends _ServiceReactionParameter {
  const _$_ServiceReactionParameter(
      {required this.name,
      required this.type,
      required this.description,
      required this.required,
      required final List<String> mutualized})
      : _mutualized = mutualized,
        super._();

  factory _$_ServiceReactionParameter.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceReactionParameterFromJson(json);

  @override
  final String name;
  @override
  final String type;
// Is it relevant in this context ?
  @override
  final String description;
  @override
  final bool required;
// Is it relevant in this context ?
  final List<String> _mutualized;
// Is it relevant in this context ?
  @override
  List<String> get mutualized {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutualized);
  }

  @override
  String toString() {
    return 'ServiceReactionParameter(name: $name, type: $type, description: $description, required: $required, mutualized: $mutualized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceReactionParameter &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality()
                .equals(other._mutualized, _mutualized));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, description,
      required, const DeepCollectionEquality().hash(_mutualized));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceReactionParameterCopyWith<_$_ServiceReactionParameter>
      get copyWith => __$$_ServiceReactionParameterCopyWithImpl<
          _$_ServiceReactionParameter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceReactionParameterToJson(
      this,
    );
  }
}

abstract class _ServiceReactionParameter extends ServiceReactionParameter {
  const factory _ServiceReactionParameter(
      {required final String name,
      required final String type,
      required final String description,
      required final bool required,
      required final List<String> mutualized}) = _$_ServiceReactionParameter;
  const _ServiceReactionParameter._() : super._();

  factory _ServiceReactionParameter.fromJson(Map<String, dynamic> json) =
      _$_ServiceReactionParameter.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override // Is it relevant in this context ?
  String get description;
  @override
  bool get required;
  @override // Is it relevant in this context ?
  List<String> get mutualized;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceReactionParameterCopyWith<_$_ServiceReactionParameter>
      get copyWith => throw _privateConstructorUsedError;
}

ServiceReaction _$ServiceReactionFromJson(Map<String, dynamic> json) {
  return _ServiceReaction.fromJson(json);
}

/// @nodoc
mixin _$ServiceReaction {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ServiceReactionParameter> get params =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceReactionCopyWith<ServiceReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceReactionCopyWith<$Res> {
  factory $ServiceReactionCopyWith(
          ServiceReaction value, $Res Function(ServiceReaction) then) =
      _$ServiceReactionCopyWithImpl<$Res, ServiceReaction>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String description,
      List<ServiceReactionParameter> params});
}

/// @nodoc
class _$ServiceReactionCopyWithImpl<$Res, $Val extends ServiceReaction>
    implements $ServiceReactionCopyWith<$Res> {
  _$ServiceReactionCopyWithImpl(this._value, this._then);

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
    Object? params = null,
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
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<ServiceReactionParameter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceReactionCopyWith<$Res>
    implements $ServiceReactionCopyWith<$Res> {
  factory _$$_ServiceReactionCopyWith(
          _$_ServiceReaction value, $Res Function(_$_ServiceReaction) then) =
      __$$_ServiceReactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String description,
      List<ServiceReactionParameter> params});
}

/// @nodoc
class __$$_ServiceReactionCopyWithImpl<$Res>
    extends _$ServiceReactionCopyWithImpl<$Res, _$_ServiceReaction>
    implements _$$_ServiceReactionCopyWith<$Res> {
  __$$_ServiceReactionCopyWithImpl(
      _$_ServiceReaction _value, $Res Function(_$_ServiceReaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? description = null,
    Object? params = null,
  }) {
    return _then(_$_ServiceReaction(
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
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<ServiceReactionParameter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceReaction extends _ServiceReaction {
  const _$_ServiceReaction(
      {required this.uid,
      required this.name,
      required this.description,
      required final List<ServiceReactionParameter> params})
      : _params = params,
        super._();

  factory _$_ServiceReaction.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceReactionFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String description;
  final List<ServiceReactionParameter> _params;
  @override
  List<ServiceReactionParameter> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'ServiceReaction(uid: $uid, name: $name, description: $description, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceReaction &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, description,
      const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceReactionCopyWith<_$_ServiceReaction> get copyWith =>
      __$$_ServiceReactionCopyWithImpl<_$_ServiceReaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceReactionToJson(
      this,
    );
  }
}

abstract class _ServiceReaction extends ServiceReaction {
  const factory _ServiceReaction(
          {required final String uid,
          required final String name,
          required final String description,
          required final List<ServiceReactionParameter> params}) =
      _$_ServiceReaction;
  const _ServiceReaction._() : super._();

  factory _ServiceReaction.fromJson(Map<String, dynamic> json) =
      _$_ServiceReaction.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get description;
  @override
  List<ServiceReactionParameter> get params;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceReactionCopyWith<_$_ServiceReaction> get copyWith =>
      throw _privateConstructorUsedError;
}
