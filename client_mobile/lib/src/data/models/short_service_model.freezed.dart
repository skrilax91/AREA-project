// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'short_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortServiceModelCollection _$ShortServiceModelCollectionFromJson(
    Map<String, dynamic> json) {
  return _ShortServiceModelCollection.fromJson(json);
}

/// @nodoc
mixin _$ShortServiceModelCollection {
  @JsonKey(name: 'services')
  List<ShortServiceModel> get shortServiceModelCollection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortServiceModelCollectionCopyWith<ShortServiceModelCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortServiceModelCollectionCopyWith<$Res> {
  factory $ShortServiceModelCollectionCopyWith(
          ShortServiceModelCollection value,
          $Res Function(ShortServiceModelCollection) then) =
      _$ShortServiceModelCollectionCopyWithImpl<$Res,
          ShortServiceModelCollection>;
  @useResult
  $Res call(
      {@JsonKey(name: 'services')
          List<ShortServiceModel> shortServiceModelCollection});
}

/// @nodoc
class _$ShortServiceModelCollectionCopyWithImpl<$Res,
        $Val extends ShortServiceModelCollection>
    implements $ShortServiceModelCollectionCopyWith<$Res> {
  _$ShortServiceModelCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortServiceModelCollection = null,
  }) {
    return _then(_value.copyWith(
      shortServiceModelCollection: null == shortServiceModelCollection
          ? _value.shortServiceModelCollection
          : shortServiceModelCollection // ignore: cast_nullable_to_non_nullable
              as List<ShortServiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortServiceModelCollectionCopyWith<$Res>
    implements $ShortServiceModelCollectionCopyWith<$Res> {
  factory _$$_ShortServiceModelCollectionCopyWith(
          _$_ShortServiceModelCollection value,
          $Res Function(_$_ShortServiceModelCollection) then) =
      __$$_ShortServiceModelCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'services')
          List<ShortServiceModel> shortServiceModelCollection});
}

/// @nodoc
class __$$_ShortServiceModelCollectionCopyWithImpl<$Res>
    extends _$ShortServiceModelCollectionCopyWithImpl<$Res,
        _$_ShortServiceModelCollection>
    implements _$$_ShortServiceModelCollectionCopyWith<$Res> {
  __$$_ShortServiceModelCollectionCopyWithImpl(
      _$_ShortServiceModelCollection _value,
      $Res Function(_$_ShortServiceModelCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortServiceModelCollection = null,
  }) {
    return _then(_$_ShortServiceModelCollection(
      null == shortServiceModelCollection
          ? _value._shortServiceModelCollection
          : shortServiceModelCollection // ignore: cast_nullable_to_non_nullable
              as List<ShortServiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortServiceModelCollection extends _ShortServiceModelCollection {
  const _$_ShortServiceModelCollection(
      @JsonKey(name: 'services')
          final List<ShortServiceModel> shortServiceModelCollection)
      : _shortServiceModelCollection = shortServiceModelCollection,
        super._();

  factory _$_ShortServiceModelCollection.fromJson(Map<String, dynamic> json) =>
      _$$_ShortServiceModelCollectionFromJson(json);

  final List<ShortServiceModel> _shortServiceModelCollection;
  @override
  @JsonKey(name: 'services')
  List<ShortServiceModel> get shortServiceModelCollection {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shortServiceModelCollection);
  }

  @override
  String toString() {
    return 'ShortServiceModelCollection(shortServiceModelCollection: $shortServiceModelCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortServiceModelCollection &&
            const DeepCollectionEquality().equals(
                other._shortServiceModelCollection,
                _shortServiceModelCollection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_shortServiceModelCollection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortServiceModelCollectionCopyWith<_$_ShortServiceModelCollection>
      get copyWith => __$$_ShortServiceModelCollectionCopyWithImpl<
          _$_ShortServiceModelCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortServiceModelCollectionToJson(
      this,
    );
  }
}

abstract class _ShortServiceModelCollection
    extends ShortServiceModelCollection {
  const factory _ShortServiceModelCollection(
          @JsonKey(name: 'services')
              final List<ShortServiceModel> shortServiceModelCollection) =
      _$_ShortServiceModelCollection;
  const _ShortServiceModelCollection._() : super._();

  factory _ShortServiceModelCollection.fromJson(Map<String, dynamic> json) =
      _$_ShortServiceModelCollection.fromJson;

  @override
  @JsonKey(name: 'services')
  List<ShortServiceModel> get shortServiceModelCollection;
  @override
  @JsonKey(ignore: true)
  _$$_ShortServiceModelCollectionCopyWith<_$_ShortServiceModelCollection>
      get copyWith => throw _privateConstructorUsedError;
}

ShortServiceModel _$ShortServiceModelFromJson(Map<String, dynamic> json) {
  return _ShortServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ShortServiceModel {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortServiceModelCopyWith<ShortServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortServiceModelCopyWith<$Res> {
  factory $ShortServiceModelCopyWith(
          ShortServiceModel value, $Res Function(ShortServiceModel) then) =
      _$ShortServiceModelCopyWithImpl<$Res, ShortServiceModel>;
  @useResult
  $Res call({String uid, String name, String description});
}

/// @nodoc
class _$ShortServiceModelCopyWithImpl<$Res, $Val extends ShortServiceModel>
    implements $ShortServiceModelCopyWith<$Res> {
  _$ShortServiceModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShortServiceModelCopyWith<$Res>
    implements $ShortServiceModelCopyWith<$Res> {
  factory _$$_ShortServiceModelCopyWith(_$_ShortServiceModel value,
          $Res Function(_$_ShortServiceModel) then) =
      __$$_ShortServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, String description});
}

/// @nodoc
class __$$_ShortServiceModelCopyWithImpl<$Res>
    extends _$ShortServiceModelCopyWithImpl<$Res, _$_ShortServiceModel>
    implements _$$_ShortServiceModelCopyWith<$Res> {
  __$$_ShortServiceModelCopyWithImpl(
      _$_ShortServiceModel _value, $Res Function(_$_ShortServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_ShortServiceModel(
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
class _$_ShortServiceModel extends _ShortServiceModel {
  const _$_ShortServiceModel(
      {required this.uid, required this.name, this.description = ""})
      : super._();

  factory _$_ShortServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShortServiceModelFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ShortServiceModel(uid: $uid, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortServiceModel &&
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
  _$$_ShortServiceModelCopyWith<_$_ShortServiceModel> get copyWith =>
      __$$_ShortServiceModelCopyWithImpl<_$_ShortServiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortServiceModelToJson(
      this,
    );
  }
}

abstract class _ShortServiceModel extends ShortServiceModel {
  const factory _ShortServiceModel(
      {required final String uid,
      required final String name,
      final String description}) = _$_ShortServiceModel;
  const _ShortServiceModel._() : super._();

  factory _ShortServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ShortServiceModel.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ShortServiceModelCopyWith<_$_ShortServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
