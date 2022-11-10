// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRegisterEntity {
  Field get email => throw _privateConstructorUsedError;
  Field get password => throw _privateConstructorUsedError;
  Field get confirm_password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegisterEntityCopyWith<UserRegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterEntityCopyWith<$Res> {
  factory $UserRegisterEntityCopyWith(
          UserRegisterEntity value, $Res Function(UserRegisterEntity) then) =
      _$UserRegisterEntityCopyWithImpl<$Res, UserRegisterEntity>;
  @useResult
  $Res call({Field email, Field password, Field confirm_password});

  $FieldCopyWith<$Res> get email;
  $FieldCopyWith<$Res> get password;
  $FieldCopyWith<$Res> get confirm_password;
}

/// @nodoc
class _$UserRegisterEntityCopyWithImpl<$Res, $Val extends UserRegisterEntity>
    implements $UserRegisterEntityCopyWith<$Res> {
  _$UserRegisterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirm_password = null,
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
      confirm_password: null == confirm_password
          ? _value.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get confirm_password {
    return $FieldCopyWith<$Res>(_value.confirm_password, (value) {
      return _then(_value.copyWith(confirm_password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserRegisterEntityCopyWith<$Res>
    implements $UserRegisterEntityCopyWith<$Res> {
  factory _$$_UserRegisterEntityCopyWith(_$_UserRegisterEntity value,
          $Res Function(_$_UserRegisterEntity) then) =
      __$$_UserRegisterEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Field email, Field password, Field confirm_password});

  @override
  $FieldCopyWith<$Res> get email;
  @override
  $FieldCopyWith<$Res> get password;
  @override
  $FieldCopyWith<$Res> get confirm_password;
}

/// @nodoc
class __$$_UserRegisterEntityCopyWithImpl<$Res>
    extends _$UserRegisterEntityCopyWithImpl<$Res, _$_UserRegisterEntity>
    implements _$$_UserRegisterEntityCopyWith<$Res> {
  __$$_UserRegisterEntityCopyWithImpl(
      _$_UserRegisterEntity _value, $Res Function(_$_UserRegisterEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirm_password = null,
  }) {
    return _then(_$_UserRegisterEntity(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Field,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Field,
      confirm_password: null == confirm_password
          ? _value.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as Field,
    ));
  }
}

/// @nodoc

class _$_UserRegisterEntity extends _UserRegisterEntity {
  const _$_UserRegisterEntity(
      {required this.email,
      required this.password,
      required this.confirm_password})
      : super._();

  @override
  final Field email;
  @override
  final Field password;
  @override
  final Field confirm_password;

  @override
  String toString() {
    return 'UserRegisterEntity(email: $email, password: $password, confirm_password: $confirm_password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegisterEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirm_password, confirm_password) ||
                other.confirm_password == confirm_password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirm_password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegisterEntityCopyWith<_$_UserRegisterEntity> get copyWith =>
      __$$_UserRegisterEntityCopyWithImpl<_$_UserRegisterEntity>(
          this, _$identity);
}

abstract class _UserRegisterEntity extends UserRegisterEntity {
  const factory _UserRegisterEntity(
      {required final Field email,
      required final Field password,
      required final Field confirm_password}) = _$_UserRegisterEntity;
  const _UserRegisterEntity._() : super._();

  @override
  Field get email;
  @override
  Field get password;
  @override
  Field get confirm_password;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegisterEntityCopyWith<_$_UserRegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
