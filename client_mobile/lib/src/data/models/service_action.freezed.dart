// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceActionParameterCollection _$ServiceActionParameterCollectionFromJson(
    Map<String, dynamic> json) {
  return _ServiceActionParameterCollection.fromJson(json);
}

/// @nodoc
mixin _$ServiceActionParameterCollection {
  List<ServiceActionParameter> get serviceActionParameterList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceActionParameterCollectionCopyWith<ServiceActionParameterCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceActionParameterCollectionCopyWith<$Res> {
  factory $ServiceActionParameterCollectionCopyWith(
          ServiceActionParameterCollection value,
          $Res Function(ServiceActionParameterCollection) then) =
      _$ServiceActionParameterCollectionCopyWithImpl<$Res,
          ServiceActionParameterCollection>;
  @useResult
  $Res call({List<ServiceActionParameter> serviceActionParameterList});
}

/// @nodoc
class _$ServiceActionParameterCollectionCopyWithImpl<$Res,
        $Val extends ServiceActionParameterCollection>
    implements $ServiceActionParameterCollectionCopyWith<$Res> {
  _$ServiceActionParameterCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceActionParameterList = null,
  }) {
    return _then(_value.copyWith(
      serviceActionParameterList: null == serviceActionParameterList
          ? _value.serviceActionParameterList
          : serviceActionParameterList // ignore: cast_nullable_to_non_nullable
              as List<ServiceActionParameter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceActionParameterCollectionCopyWith<$Res>
    implements $ServiceActionParameterCollectionCopyWith<$Res> {
  factory _$$_ServiceActionParameterCollectionCopyWith(
          _$_ServiceActionParameterCollection value,
          $Res Function(_$_ServiceActionParameterCollection) then) =
      __$$_ServiceActionParameterCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceActionParameter> serviceActionParameterList});
}

/// @nodoc
class __$$_ServiceActionParameterCollectionCopyWithImpl<$Res>
    extends _$ServiceActionParameterCollectionCopyWithImpl<$Res,
        _$_ServiceActionParameterCollection>
    implements _$$_ServiceActionParameterCollectionCopyWith<$Res> {
  __$$_ServiceActionParameterCollectionCopyWithImpl(
      _$_ServiceActionParameterCollection _value,
      $Res Function(_$_ServiceActionParameterCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceActionParameterList = null,
  }) {
    return _then(_$_ServiceActionParameterCollection(
      null == serviceActionParameterList
          ? _value._serviceActionParameterList
          : serviceActionParameterList // ignore: cast_nullable_to_non_nullable
              as List<ServiceActionParameter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceActionParameterCollection
    extends _ServiceActionParameterCollection {
  const _$_ServiceActionParameterCollection(
      final List<ServiceActionParameter> serviceActionParameterList)
      : _serviceActionParameterList = serviceActionParameterList,
        super._();

  factory _$_ServiceActionParameterCollection.fromJson(
          Map<String, dynamic> json) =>
      _$$_ServiceActionParameterCollectionFromJson(json);

  final List<ServiceActionParameter> _serviceActionParameterList;
  @override
  List<ServiceActionParameter> get serviceActionParameterList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceActionParameterList);
  }

  @override
  String toString() {
    return 'ServiceActionParameterCollection(serviceActionParameterList: $serviceActionParameterList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceActionParameterCollection &&
            const DeepCollectionEquality().equals(
                other._serviceActionParameterList,
                _serviceActionParameterList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_serviceActionParameterList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceActionParameterCollectionCopyWith<
          _$_ServiceActionParameterCollection>
      get copyWith => __$$_ServiceActionParameterCollectionCopyWithImpl<
          _$_ServiceActionParameterCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceActionParameterCollectionToJson(
      this,
    );
  }
}

abstract class _ServiceActionParameterCollection
    extends ServiceActionParameterCollection {
  const factory _ServiceActionParameterCollection(
          final List<ServiceActionParameter> serviceActionParameterList) =
      _$_ServiceActionParameterCollection;
  const _ServiceActionParameterCollection._() : super._();

  factory _ServiceActionParameterCollection.fromJson(
      Map<String, dynamic> json) = _$_ServiceActionParameterCollection.fromJson;

  @override
  List<ServiceActionParameter> get serviceActionParameterList;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceActionParameterCollectionCopyWith<
          _$_ServiceActionParameterCollection>
      get copyWith => throw _privateConstructorUsedError;
}

ServiceActionParameter _$ServiceActionParameterFromJson(
    Map<String, dynamic> json) {
  return _ServiceActionParameter.fromJson(json);
}

/// @nodoc
mixin _$ServiceActionParameter {
  String get name => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // Todo : Replace with actual class
  String get description => throw _privateConstructorUsedError;
  bool get required =>
      throw _privateConstructorUsedError; // imo should be -> depends_on[] and conflicts[], and maybe dependencies[]
// mutualized means nothing
  List<String> get mutualized => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceActionParameterCopyWith<ServiceActionParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceActionParameterCopyWith<$Res> {
  factory $ServiceActionParameterCopyWith(ServiceActionParameter value,
          $Res Function(ServiceActionParameter) then) =
      _$ServiceActionParameterCopyWithImpl<$Res, ServiceActionParameter>;
  @useResult
  $Res call(
      {String name,
      String type,
      String description,
      bool required,
      List<String> mutualized});
}

/// @nodoc
class _$ServiceActionParameterCopyWithImpl<$Res,
        $Val extends ServiceActionParameter>
    implements $ServiceActionParameterCopyWith<$Res> {
  _$ServiceActionParameterCopyWithImpl(this._value, this._then);

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
abstract class _$$_ServiceActionParameterCopyWith<$Res>
    implements $ServiceActionParameterCopyWith<$Res> {
  factory _$$_ServiceActionParameterCopyWith(_$_ServiceActionParameter value,
          $Res Function(_$_ServiceActionParameter) then) =
      __$$_ServiceActionParameterCopyWithImpl<$Res>;
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
class __$$_ServiceActionParameterCopyWithImpl<$Res>
    extends _$ServiceActionParameterCopyWithImpl<$Res,
        _$_ServiceActionParameter>
    implements _$$_ServiceActionParameterCopyWith<$Res> {
  __$$_ServiceActionParameterCopyWithImpl(_$_ServiceActionParameter _value,
      $Res Function(_$_ServiceActionParameter) _then)
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
    return _then(_$_ServiceActionParameter(
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
class _$_ServiceActionParameter extends _ServiceActionParameter {
  const _$_ServiceActionParameter(
      {required this.name,
      required this.type,
      required this.description,
      required this.required,
      required final List<String> mutualized})
      : _mutualized = mutualized,
        super._();

  factory _$_ServiceActionParameter.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceActionParameterFromJson(json);

  @override
  final String name;
  @override
  final String type;
// Todo : Replace with actual class
  @override
  final String description;
  @override
  final bool required;
// imo should be -> depends_on[] and conflicts[], and maybe dependencies[]
// mutualized means nothing
  final List<String> _mutualized;
// imo should be -> depends_on[] and conflicts[], and maybe dependencies[]
// mutualized means nothing
  @override
  List<String> get mutualized {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutualized);
  }

  @override
  String toString() {
    return 'ServiceActionParameter(name: $name, type: $type, description: $description, required: $required, mutualized: $mutualized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceActionParameter &&
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
  _$$_ServiceActionParameterCopyWith<_$_ServiceActionParameter> get copyWith =>
      __$$_ServiceActionParameterCopyWithImpl<_$_ServiceActionParameter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceActionParameterToJson(
      this,
    );
  }
}

abstract class _ServiceActionParameter extends ServiceActionParameter {
  const factory _ServiceActionParameter(
      {required final String name,
      required final String type,
      required final String description,
      required final bool required,
      required final List<String> mutualized}) = _$_ServiceActionParameter;
  const _ServiceActionParameter._() : super._();

  factory _ServiceActionParameter.fromJson(Map<String, dynamic> json) =
      _$_ServiceActionParameter.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override // Todo : Replace with actual class
  String get description;
  @override
  bool get required;
  @override // imo should be -> depends_on[] and conflicts[], and maybe dependencies[]
// mutualized means nothing
  List<String> get mutualized;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceActionParameterCopyWith<_$_ServiceActionParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceActionModelCollection _$ServiceActionModelCollectionFromJson(
    Map<String, dynamic> json) {
  return _ServiceActionModelCollection.fromJson(json);
}

/// @nodoc
mixin _$ServiceActionModelCollection {
  List<ServiceActionModel> get serviceActionList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceActionModelCollectionCopyWith<ServiceActionModelCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceActionModelCollectionCopyWith<$Res> {
  factory $ServiceActionModelCollectionCopyWith(
          ServiceActionModelCollection value,
          $Res Function(ServiceActionModelCollection) then) =
      _$ServiceActionModelCollectionCopyWithImpl<$Res,
          ServiceActionModelCollection>;
  @useResult
  $Res call({List<ServiceActionModel> serviceActionList});
}

/// @nodoc
class _$ServiceActionModelCollectionCopyWithImpl<$Res,
        $Val extends ServiceActionModelCollection>
    implements $ServiceActionModelCollectionCopyWith<$Res> {
  _$ServiceActionModelCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceActionList = null,
  }) {
    return _then(_value.copyWith(
      serviceActionList: null == serviceActionList
          ? _value.serviceActionList
          : serviceActionList // ignore: cast_nullable_to_non_nullable
              as List<ServiceActionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceActionModelCollectionCopyWith<$Res>
    implements $ServiceActionModelCollectionCopyWith<$Res> {
  factory _$$_ServiceActionModelCollectionCopyWith(
          _$_ServiceActionModelCollection value,
          $Res Function(_$_ServiceActionModelCollection) then) =
      __$$_ServiceActionModelCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceActionModel> serviceActionList});
}

/// @nodoc
class __$$_ServiceActionModelCollectionCopyWithImpl<$Res>
    extends _$ServiceActionModelCollectionCopyWithImpl<$Res,
        _$_ServiceActionModelCollection>
    implements _$$_ServiceActionModelCollectionCopyWith<$Res> {
  __$$_ServiceActionModelCollectionCopyWithImpl(
      _$_ServiceActionModelCollection _value,
      $Res Function(_$_ServiceActionModelCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceActionList = null,
  }) {
    return _then(_$_ServiceActionModelCollection(
      null == serviceActionList
          ? _value._serviceActionList
          : serviceActionList // ignore: cast_nullable_to_non_nullable
              as List<ServiceActionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceActionModelCollection extends _ServiceActionModelCollection {
  const _$_ServiceActionModelCollection(
      final List<ServiceActionModel> serviceActionList)
      : _serviceActionList = serviceActionList,
        super._();

  factory _$_ServiceActionModelCollection.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceActionModelCollectionFromJson(json);

  final List<ServiceActionModel> _serviceActionList;
  @override
  List<ServiceActionModel> get serviceActionList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceActionList);
  }

  @override
  String toString() {
    return 'ServiceActionModelCollection(serviceActionList: $serviceActionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceActionModelCollection &&
            const DeepCollectionEquality()
                .equals(other._serviceActionList, _serviceActionList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_serviceActionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceActionModelCollectionCopyWith<_$_ServiceActionModelCollection>
      get copyWith => __$$_ServiceActionModelCollectionCopyWithImpl<
          _$_ServiceActionModelCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceActionModelCollectionToJson(
      this,
    );
  }
}

abstract class _ServiceActionModelCollection
    extends ServiceActionModelCollection {
  const factory _ServiceActionModelCollection(
          final List<ServiceActionModel> serviceActionList) =
      _$_ServiceActionModelCollection;
  const _ServiceActionModelCollection._() : super._();

  factory _ServiceActionModelCollection.fromJson(Map<String, dynamic> json) =
      _$_ServiceActionModelCollection.fromJson;

  @override
  List<ServiceActionModel> get serviceActionList;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceActionModelCollectionCopyWith<_$_ServiceActionModelCollection>
      get copyWith => throw _privateConstructorUsedError;
}

ServiceActionModel _$ServiceActionModelFromJson(Map<String, dynamic> json) {
  return _ServiceActionModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceActionModel {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ServiceActionParameter> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceActionModelCopyWith<ServiceActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceActionModelCopyWith<$Res> {
  factory $ServiceActionModelCopyWith(
          ServiceActionModel value, $Res Function(ServiceActionModel) then) =
      _$ServiceActionModelCopyWithImpl<$Res, ServiceActionModel>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String description,
      List<ServiceActionParameter> params});
}

/// @nodoc
class _$ServiceActionModelCopyWithImpl<$Res, $Val extends ServiceActionModel>
    implements $ServiceActionModelCopyWith<$Res> {
  _$ServiceActionModelCopyWithImpl(this._value, this._then);

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
              as List<ServiceActionParameter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceActionModelCopyWith<$Res>
    implements $ServiceActionModelCopyWith<$Res> {
  factory _$$_ServiceActionModelCopyWith(_$_ServiceActionModel value,
          $Res Function(_$_ServiceActionModel) then) =
      __$$_ServiceActionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String description,
      List<ServiceActionParameter> params});
}

/// @nodoc
class __$$_ServiceActionModelCopyWithImpl<$Res>
    extends _$ServiceActionModelCopyWithImpl<$Res, _$_ServiceActionModel>
    implements _$$_ServiceActionModelCopyWith<$Res> {
  __$$_ServiceActionModelCopyWithImpl(
      _$_ServiceActionModel _value, $Res Function(_$_ServiceActionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? description = null,
    Object? params = null,
  }) {
    return _then(_$_ServiceActionModel(
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
              as List<ServiceActionParameter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceActionModel extends _ServiceActionModel {
  const _$_ServiceActionModel(
      {required this.uid,
      required this.name,
      required this.description,
      required final List<ServiceActionParameter> params})
      : _params = params,
        super._();

  factory _$_ServiceActionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceActionModelFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String description;
  final List<ServiceActionParameter> _params;
  @override
  List<ServiceActionParameter> get params {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  String toString() {
    return 'ServiceActionModel(uid: $uid, name: $name, description: $description, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceActionModel &&
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
  _$$_ServiceActionModelCopyWith<_$_ServiceActionModel> get copyWith =>
      __$$_ServiceActionModelCopyWithImpl<_$_ServiceActionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceActionModelToJson(
      this,
    );
  }
}

abstract class _ServiceActionModel extends ServiceActionModel {
  const factory _ServiceActionModel(
          {required final String uid,
          required final String name,
          required final String description,
          required final List<ServiceActionParameter> params}) =
      _$_ServiceActionModel;
  const _ServiceActionModel._() : super._();

  factory _ServiceActionModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceActionModel.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get description;
  @override
  List<ServiceActionParameter> get params;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceActionModelCopyWith<_$_ServiceActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
