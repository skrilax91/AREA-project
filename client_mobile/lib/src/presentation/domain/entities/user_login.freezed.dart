// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLoginEntity {
  Field get email => throw _privateConstructorUsedError;
  Field get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginEntityCopyWith<UserLoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginEntityCopyWith<$Res> {
  factory $UserLoginEntityCopyWith(
          UserLoginEntity value, $Res Function(UserLoginEntity) then) =
      _$UserLoginEntityCopyWithImpl<$Res, UserLoginEntity>;
  @useResult
  $Res call({Field email, Field password});

  $FieldCopyWith<$Res> get email;
  $FieldCopyWith<$Res> get password;
}

/// @nodoc
class _$UserLoginEntityCopyWithImpl<$Res, $Val extends UserLoginEntity>
    implements $UserLoginEntityCopyWith<$Res> {
  _$UserLoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Field,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Field,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get email {
    return $FieldCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get password {
    return $FieldCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserLoginEntityCopyWith<$Res>
    implements $UserLoginEntityCopyWith<$Res> {
  factory _$$_UserLoginEntityCopyWith(
          _$_UserLoginEntity value, $Res Function(_$_UserLoginEntity) then) =
      __$$_UserLoginEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Field email, Field password});

  @override
  $FieldCopyWith<$Res> get email;
  @override
  $FieldCopyWith<$Res> get password;
}

/// @nodoc
class __$$_UserLoginEntityCopyWithImpl<$Res>
    extends _$UserLoginEntityCopyWithImpl<$Res, _$_UserLoginEntity>
    implements _$$_UserLoginEntityCopyWith<$Res> {
  __$$_UserLoginEntityCopyWithImpl(
      _$_UserLoginEntity _value, $Res Function(_$_UserLoginEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_UserLoginEntity(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Field,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Field,
    ));
  }
}

/// @nodoc

class _$_UserLoginEntity extends _UserLoginEntity {
  const _$_UserLoginEntity({required this.email, required this.password})
      : super._();

  @override
  final Field email;
  @override
  final Field password;

  @override
  String toString() {
    return 'UserLoginEntity(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLoginEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoginEntityCopyWith<_$_UserLoginEntity> get copyWith =>
      __$$_UserLoginEntityCopyWithImpl<_$_UserLoginEntity>(this, _$identity);
}

abstract class _UserLoginEntity extends UserLoginEntity {
  const factory _UserLoginEntity(
      {required final Field email,
      required final Field password}) = _$_UserLoginEntity;
  const _UserLoginEntity._() : super._();

  @override
  Field get email;
  @override
  Field get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserLoginEntityCopyWith<_$_UserLoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
