// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'area_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaConfigServiceActionModel _$AreaConfigServiceActionModelFromJson(
    Map<String, dynamic> json) {
  return _AreaConfigServiceActionModel.fromJson(json);
}

/// @nodoc
mixin _$AreaConfigServiceActionModel {
  String get uid => throw _privateConstructorUsedError;
  Map<String, dynamic> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaConfigServiceActionModelCopyWith<AreaConfigServiceActionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaConfigServiceActionModelCopyWith<$Res> {
  factory $AreaConfigServiceActionModelCopyWith(
          AreaConfigServiceActionModel value,
          $Res Function(AreaConfigServiceActionModel) then) =
      _$AreaConfigServiceActionModelCopyWithImpl<$Res,
          AreaConfigServiceActionModel>;
  @useResult
  $Res call({String uid, Map<String, dynamic> params});
}

/// @nodoc
class _$AreaConfigServiceActionModelCopyWithImpl<$Res,
        $Val extends AreaConfigServiceActionModel>
    implements $AreaConfigServiceActionModelCopyWith<$Res> {
  _$AreaConfigServiceActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaConfigServiceActionModelCopyWith<$Res>
    implements $AreaConfigServiceActionModelCopyWith<$Res> {
  factory _$$_AreaConfigServiceActionModelCopyWith(
          _$_AreaConfigServiceActionModel value,
          $Res Function(_$_AreaConfigServiceActionModel) then) =
      __$$_AreaConfigServiceActionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, Map<String, dynamic> params});
}

/// @nodoc
class __$$_AreaConfigServiceActionModelCopyWithImpl<$Res>
    extends _$AreaConfigServiceActionModelCopyWithImpl<$Res,
        _$_AreaConfigServiceActionModel>
    implements _$$_AreaConfigServiceActionModelCopyWith<$Res> {
  __$$_AreaConfigServiceActionModelCopyWithImpl(
      _$_AreaConfigServiceActionModel _value,
      $Res Function(_$_AreaConfigServiceActionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? params = null,
  }) {
    return _then(_$_AreaConfigServiceActionModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaConfigServiceActionModel extends _AreaConfigServiceActionModel {
  const _$_AreaConfigServiceActionModel(
      {required this.uid, final Map<String, dynamic> params = const {}})
      : _params = params,
        super._();

  factory _$_AreaConfigServiceActionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AreaConfigServiceActionModelFromJson(json);

  @override
  final String uid;
  final Map<String, dynamic> _params;
  @override
  @JsonKey()
  Map<String, dynamic> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  String toString() {
    return 'AreaConfigServiceActionModel(uid: $uid, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaConfigServiceActionModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaConfigServiceActionModelCopyWith<_$_AreaConfigServiceActionModel>
      get copyWith => __$$_AreaConfigServiceActionModelCopyWithImpl<
          _$_AreaConfigServiceActionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaConfigServiceActionModelToJson(
      this,
    );
  }
}

abstract class _AreaConfigServiceActionModel
    extends AreaConfigServiceActionModel {
  const factory _AreaConfigServiceActionModel(
      {required final String uid,
      final Map<String, dynamic> params}) = _$_AreaConfigServiceActionModel;
  const _AreaConfigServiceActionModel._() : super._();

  factory _AreaConfigServiceActionModel.fromJson(Map<String, dynamic> json) =
      _$_AreaConfigServiceActionModel.fromJson;

  @override
  String get uid;
  @override
  Map<String, dynamic> get params;
  @override
  @JsonKey(ignore: true)
  _$$_AreaConfigServiceActionModelCopyWith<_$_AreaConfigServiceActionModel>
      get copyWith => throw _privateConstructorUsedError;
}

AreaConfigServiceTriggerModel _$AreaConfigServiceTriggerModelFromJson(
    Map<String, dynamic> json) {
  return _AreaConfigServiceTriggerModel.fromJson(json);
}

/// @nodoc
mixin _$AreaConfigServiceTriggerModel {
  String get uid => throw _privateConstructorUsedError;
  Map<String, dynamic> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaConfigServiceTriggerModelCopyWith<AreaConfigServiceTriggerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaConfigServiceTriggerModelCopyWith<$Res> {
  factory $AreaConfigServiceTriggerModelCopyWith(
          AreaConfigServiceTriggerModel value,
          $Res Function(AreaConfigServiceTriggerModel) then) =
      _$AreaConfigServiceTriggerModelCopyWithImpl<$Res,
          AreaConfigServiceTriggerModel>;
  @useResult
  $Res call({String uid, Map<String, dynamic> params});
}

/// @nodoc
class _$AreaConfigServiceTriggerModelCopyWithImpl<$Res,
        $Val extends AreaConfigServiceTriggerModel>
    implements $AreaConfigServiceTriggerModelCopyWith<$Res> {
  _$AreaConfigServiceTriggerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaConfigServiceTriggerModelCopyWith<$Res>
    implements $AreaConfigServiceTriggerModelCopyWith<$Res> {
  factory _$$_AreaConfigServiceTriggerModelCopyWith(
          _$_AreaConfigServiceTriggerModel value,
          $Res Function(_$_AreaConfigServiceTriggerModel) then) =
      __$$_AreaConfigServiceTriggerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, Map<String, dynamic> params});
}

/// @nodoc
class __$$_AreaConfigServiceTriggerModelCopyWithImpl<$Res>
    extends _$AreaConfigServiceTriggerModelCopyWithImpl<$Res,
        _$_AreaConfigServiceTriggerModel>
    implements _$$_AreaConfigServiceTriggerModelCopyWith<$Res> {
  __$$_AreaConfigServiceTriggerModelCopyWithImpl(
      _$_AreaConfigServiceTriggerModel _value,
      $Res Function(_$_AreaConfigServiceTriggerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? params = null,
  }) {
    return _then(_$_AreaConfigServiceTriggerModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaConfigServiceTriggerModel extends _AreaConfigServiceTriggerModel {
  const _$_AreaConfigServiceTriggerModel(
      {required this.uid, final Map<String, dynamic> params = const {}})
      : _params = params,
        super._();

  factory _$_AreaConfigServiceTriggerModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_AreaConfigServiceTriggerModelFromJson(json);

  @override
  final String uid;
  final Map<String, dynamic> _params;
  @override
  @JsonKey()
  Map<String, dynamic> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  String toString() {
    return 'AreaConfigServiceTriggerModel(uid: $uid, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaConfigServiceTriggerModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaConfigServiceTriggerModelCopyWith<_$_AreaConfigServiceTriggerModel>
      get copyWith => __$$_AreaConfigServiceTriggerModelCopyWithImpl<
          _$_AreaConfigServiceTriggerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaConfigServiceTriggerModelToJson(
      this,
    );
  }
}

abstract class _AreaConfigServiceTriggerModel
    extends AreaConfigServiceTriggerModel {
  const factory _AreaConfigServiceTriggerModel(
      {required final String uid,
      final Map<String, dynamic> params}) = _$_AreaConfigServiceTriggerModel;
  const _AreaConfigServiceTriggerModel._() : super._();

  factory _AreaConfigServiceTriggerModel.fromJson(Map<String, dynamic> json) =
      _$_AreaConfigServiceTriggerModel.fromJson;

  @override
  String get uid;
  @override
  Map<String, dynamic> get params;
  @override
  @JsonKey(ignore: true)
  _$$_AreaConfigServiceTriggerModelCopyWith<_$_AreaConfigServiceTriggerModel>
      get copyWith => throw _privateConstructorUsedError;
}

AreaConfigServiceModel _$AreaConfigServiceModelFromJson(
    Map<String, dynamic> json) {
  return _AreaConfigServiceModel.fromJson(json);
}

/// @nodoc
mixin _$AreaConfigServiceModel {
  String get uid => throw _privateConstructorUsedError;
  List<AreaConfigServiceTriggerModel> get triggers =>
      throw _privateConstructorUsedError;
  List<AreaConfigServiceActionModel> get actions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaConfigServiceModelCopyWith<AreaConfigServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaConfigServiceModelCopyWith<$Res> {
  factory $AreaConfigServiceModelCopyWith(AreaConfigServiceModel value,
          $Res Function(AreaConfigServiceModel) then) =
      _$AreaConfigServiceModelCopyWithImpl<$Res, AreaConfigServiceModel>;
  @useResult
  $Res call(
      {String uid,
      List<AreaConfigServiceTriggerModel> triggers,
      List<AreaConfigServiceActionModel> actions});
}

/// @nodoc
class _$AreaConfigServiceModelCopyWithImpl<$Res,
        $Val extends AreaConfigServiceModel>
    implements $AreaConfigServiceModelCopyWith<$Res> {
  _$AreaConfigServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? triggers = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      triggers: null == triggers
          ? _value.triggers
          : triggers // ignore: cast_nullable_to_non_nullable
              as List<AreaConfigServiceTriggerModel>,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<AreaConfigServiceActionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaConfigServiceModelCopyWith<$Res>
    implements $AreaConfigServiceModelCopyWith<$Res> {
  factory _$$_AreaConfigServiceModelCopyWith(_$_AreaConfigServiceModel value,
          $Res Function(_$_AreaConfigServiceModel) then) =
      __$$_AreaConfigServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      List<AreaConfigServiceTriggerModel> triggers,
      List<AreaConfigServiceActionModel> actions});
}

/// @nodoc
class __$$_AreaConfigServiceModelCopyWithImpl<$Res>
    extends _$AreaConfigServiceModelCopyWithImpl<$Res,
        _$_AreaConfigServiceModel>
    implements _$$_AreaConfigServiceModelCopyWith<$Res> {
  __$$_AreaConfigServiceModelCopyWithImpl(_$_AreaConfigServiceModel _value,
      $Res Function(_$_AreaConfigServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? triggers = null,
    Object? actions = null,
  }) {
    return _then(_$_AreaConfigServiceModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      triggers: null == triggers
          ? _value._triggers
          : triggers // ignore: cast_nullable_to_non_nullable
              as List<AreaConfigServiceTriggerModel>,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<AreaConfigServiceActionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaConfigServiceModel extends _AreaConfigServiceModel {
  const _$_AreaConfigServiceModel(
      {required this.uid,
      final List<AreaConfigServiceTriggerModel> triggers = const [],
      final List<AreaConfigServiceActionModel> actions = const []})
      : _triggers = triggers,
        _actions = actions,
        super._();

  factory _$_AreaConfigServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_AreaConfigServiceModelFromJson(json);

  @override
  final String uid;
  final List<AreaConfigServiceTriggerModel> _triggers;
  @override
  @JsonKey()
  List<AreaConfigServiceTriggerModel> get triggers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_triggers);
  }

  final List<AreaConfigServiceActionModel> _actions;
  @override
  @JsonKey()
  List<AreaConfigServiceActionModel> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'AreaConfigServiceModel(uid: $uid, triggers: $triggers, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaConfigServiceModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._triggers, _triggers) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      const DeepCollectionEquality().hash(_triggers),
      const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaConfigServiceModelCopyWith<_$_AreaConfigServiceModel> get copyWith =>
      __$$_AreaConfigServiceModelCopyWithImpl<_$_AreaConfigServiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaConfigServiceModelToJson(
      this,
    );
  }
}

abstract class _AreaConfigServiceModel extends AreaConfigServiceModel {
  const factory _AreaConfigServiceModel(
          {required final String uid,
          final List<AreaConfigServiceTriggerModel> triggers,
          final List<AreaConfigServiceActionModel> actions}) =
      _$_AreaConfigServiceModel;
  const _AreaConfigServiceModel._() : super._();

  factory _AreaConfigServiceModel.fromJson(Map<String, dynamic> json) =
      _$_AreaConfigServiceModel.fromJson;

  @override
  String get uid;
  @override
  List<AreaConfigServiceTriggerModel> get triggers;
  @override
  List<AreaConfigServiceActionModel> get actions;
  @override
  @JsonKey(ignore: true)
  _$$_AreaConfigServiceModelCopyWith<_$_AreaConfigServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaConfigModel _$AreaConfigModelFromJson(Map<String, dynamic> json) {
  return _AreaConfigModel.fromJson(json);
}

/// @nodoc
mixin _$AreaConfigModel {
  List<AreaConfigServiceModel> get services =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaConfigModelCopyWith<AreaConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaConfigModelCopyWith<$Res> {
  factory $AreaConfigModelCopyWith(
          AreaConfigModel value, $Res Function(AreaConfigModel) then) =
      _$AreaConfigModelCopyWithImpl<$Res, AreaConfigModel>;
  @useResult
  $Res call({List<AreaConfigServiceModel> services});
}

/// @nodoc
class _$AreaConfigModelCopyWithImpl<$Res, $Val extends AreaConfigModel>
    implements $AreaConfigModelCopyWith<$Res> {
  _$AreaConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<AreaConfigServiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaConfigModelCopyWith<$Res>
    implements $AreaConfigModelCopyWith<$Res> {
  factory _$$_AreaConfigModelCopyWith(
          _$_AreaConfigModel value, $Res Function(_$_AreaConfigModel) then) =
      __$$_AreaConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AreaConfigServiceModel> services});
}

/// @nodoc
class __$$_AreaConfigModelCopyWithImpl<$Res>
    extends _$AreaConfigModelCopyWithImpl<$Res, _$_AreaConfigModel>
    implements _$$_AreaConfigModelCopyWith<$Res> {
  __$$_AreaConfigModelCopyWithImpl(
      _$_AreaConfigModel _value, $Res Function(_$_AreaConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$_AreaConfigModel(
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<AreaConfigServiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaConfigModel extends _AreaConfigModel {
  const _$_AreaConfigModel(
      {required final List<AreaConfigServiceModel> services})
      : _services = services,
        super._();

  factory _$_AreaConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_AreaConfigModelFromJson(json);

  final List<AreaConfigServiceModel> _services;
  @override
  List<AreaConfigServiceModel> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'AreaConfigModel(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaConfigModel &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaConfigModelCopyWith<_$_AreaConfigModel> get copyWith =>
      __$$_AreaConfigModelCopyWithImpl<_$_AreaConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaConfigModelToJson(
      this,
    );
  }
}

abstract class _AreaConfigModel extends AreaConfigModel {
  const factory _AreaConfigModel(
          {required final List<AreaConfigServiceModel> services}) =
      _$_AreaConfigModel;
  const _AreaConfigModel._() : super._();

  factory _AreaConfigModel.fromJson(Map<String, dynamic> json) =
      _$_AreaConfigModel.fromJson;

  @override
  List<AreaConfigServiceModel> get services;
  @override
  @JsonKey(ignore: true)
  _$$_AreaConfigModelCopyWith<_$_AreaConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) {
  return _AreaModel.fromJson(json);
}

/// @nodoc
mixin _$AreaModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  AreaConfigModel get config => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaModelCopyWith<AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaModelCopyWith<$Res> {
  factory $AreaModelCopyWith(AreaModel value, $Res Function(AreaModel) then) =
      _$AreaModelCopyWithImpl<$Res, AreaModel>;
  @useResult
  $Res call({String name, String description, AreaConfigModel config});

  $AreaConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class _$AreaModelCopyWithImpl<$Res, $Val extends AreaModel>
    implements $AreaModelCopyWith<$Res> {
  _$AreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as AreaConfigModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaConfigModelCopyWith<$Res> get config {
    return $AreaConfigModelCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AreaModelCopyWith<$Res> implements $AreaModelCopyWith<$Res> {
  factory _$$_AreaModelCopyWith(
          _$_AreaModel value, $Res Function(_$_AreaModel) then) =
      __$$_AreaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, AreaConfigModel config});

  @override
  $AreaConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class __$$_AreaModelCopyWithImpl<$Res>
    extends _$AreaModelCopyWithImpl<$Res, _$_AreaModel>
    implements _$$_AreaModelCopyWith<$Res> {
  __$$_AreaModelCopyWithImpl(
      _$_AreaModel _value, $Res Function(_$_AreaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? config = null,
  }) {
    return _then(_$_AreaModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as AreaConfigModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaModel extends _AreaModel {
  const _$_AreaModel(
      {required this.name, required this.description, required this.config})
      : super._();

  factory _$_AreaModel.fromJson(Map<String, dynamic> json) =>
      _$$_AreaModelFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final AreaConfigModel config;

  @override
  String toString() {
    return 'AreaModel(name: $name, description: $description, config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaModelCopyWith<_$_AreaModel> get copyWith =>
      __$$_AreaModelCopyWithImpl<_$_AreaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaModelToJson(
      this,
    );
  }
}

abstract class _AreaModel extends AreaModel {
  const factory _AreaModel(
      {required final String name,
      required final String description,
      required final AreaConfigModel config}) = _$_AreaModel;
  const _AreaModel._() : super._();

  factory _AreaModel.fromJson(Map<String, dynamic> json) =
      _$_AreaModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  AreaConfigModel get config;
  @override
  @JsonKey(ignore: true)
  _$$_AreaModelCopyWith<_$_AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
