// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_register_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRegisterFormState {
  UserRegisterEntity get form => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegisterFormStateCopyWith<UserRegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterFormStateCopyWith<$Res> {
  factory $UserRegisterFormStateCopyWith(UserRegisterFormState value,
          $Res Function(UserRegisterFormState) then) =
      _$UserRegisterFormStateCopyWithImpl<$Res, UserRegisterFormState>;
  @useResult
  $Res call({UserRegisterEntity form});

  $UserRegisterEntityCopyWith<$Res> get form;
}

/// @nodoc
class _$UserRegisterFormStateCopyWithImpl<$Res,
        $Val extends UserRegisterFormState>
    implements $UserRegisterFormStateCopyWith<$Res> {
  _$UserRegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserRegisterEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRegisterEntityCopyWith<$Res> get form {
    return $UserRegisterEntityCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserRegisterFormStateCopyWith<$Res>
    implements $UserRegisterFormStateCopyWith<$Res> {
  factory _$$_UserRegisterFormStateCopyWith(_$_UserRegisterFormState value,
          $Res Function(_$_UserRegisterFormState) then) =
      __$$_UserRegisterFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRegisterEntity form});

  @override
  $UserRegisterEntityCopyWith<$Res> get form;
}

/// @nodoc
class __$$_UserRegisterFormStateCopyWithImpl<$Res>
    extends _$UserRegisterFormStateCopyWithImpl<$Res, _$_UserRegisterFormState>
    implements _$$_UserRegisterFormStateCopyWith<$Res> {
  __$$_UserRegisterFormStateCopyWithImpl(_$_UserRegisterFormState _value,
      $Res Function(_$_UserRegisterFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$_UserRegisterFormState(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserRegisterEntity,
    ));
  }
}

/// @nodoc

class _$_UserRegisterFormState implements _UserRegisterFormState {
  const _$_UserRegisterFormState(this.form);

  @override
  final UserRegisterEntity form;

  @override
  String toString() {
    return 'UserRegisterFormState(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegisterFormState &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegisterFormStateCopyWith<_$_UserRegisterFormState> get copyWith =>
      __$$_UserRegisterFormStateCopyWithImpl<_$_UserRegisterFormState>(
          this, _$identity);
}

abstract class _UserRegisterFormState implements UserRegisterFormState {
  const factory _UserRegisterFormState(final UserRegisterEntity form) =
      _$_UserRegisterFormState;

  @override
  UserRegisterEntity get form;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegisterFormStateCopyWith<_$_UserRegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
