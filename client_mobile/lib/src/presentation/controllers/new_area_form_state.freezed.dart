// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_area_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewAreaFormState {
  List<ShortService> get services => throw _privateConstructorUsedError;
  ShortService? get selectedTrigger => throw _privateConstructorUsedError;
  ShortService? get selectedAction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewAreaFormStateCopyWith<NewAreaFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAreaFormStateCopyWith<$Res> {
  factory $NewAreaFormStateCopyWith(
          NewAreaFormState value, $Res Function(NewAreaFormState) then) =
      _$NewAreaFormStateCopyWithImpl<$Res, NewAreaFormState>;
  @useResult
  $Res call(
      {List<ShortService> services,
      ShortService? selectedTrigger,
      ShortService? selectedAction});
}

/// @nodoc
class _$NewAreaFormStateCopyWithImpl<$Res, $Val extends NewAreaFormState>
    implements $NewAreaFormStateCopyWith<$Res> {
  _$NewAreaFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
    Object? selectedTrigger = freezed,
    Object? selectedAction = freezed,
  }) {
    return _then(_value.copyWith(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ShortService>,
      selectedTrigger: freezed == selectedTrigger
          ? _value.selectedTrigger
          : selectedTrigger // ignore: cast_nullable_to_non_nullable
              as ShortService?,
      selectedAction: freezed == selectedAction
          ? _value.selectedAction
          : selectedAction // ignore: cast_nullable_to_non_nullable
              as ShortService?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewAreaFormStateCopyWith<$Res>
    implements $NewAreaFormStateCopyWith<$Res> {
  factory _$$_NewAreaFormStateCopyWith(
          _$_NewAreaFormState value, $Res Function(_$_NewAreaFormState) then) =
      __$$_NewAreaFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShortService> services,
      ShortService? selectedTrigger,
      ShortService? selectedAction});
}

/// @nodoc
class __$$_NewAreaFormStateCopyWithImpl<$Res>
    extends _$NewAreaFormStateCopyWithImpl<$Res, _$_NewAreaFormState>
    implements _$$_NewAreaFormStateCopyWith<$Res> {
  __$$_NewAreaFormStateCopyWithImpl(
      _$_NewAreaFormState _value, $Res Function(_$_NewAreaFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
    Object? selectedTrigger = freezed,
    Object? selectedAction = freezed,
  }) {
    return _then(_$_NewAreaFormState(
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ShortService>,
      selectedTrigger: freezed == selectedTrigger
          ? _value.selectedTrigger
          : selectedTrigger // ignore: cast_nullable_to_non_nullable
              as ShortService?,
      selectedAction: freezed == selectedAction
          ? _value.selectedAction
          : selectedAction // ignore: cast_nullable_to_non_nullable
              as ShortService?,
    ));
  }
}

/// @nodoc

class _$_NewAreaFormState extends _NewAreaFormState {
  const _$_NewAreaFormState(
      {required final List<ShortService> services,
      required this.selectedTrigger,
      required this.selectedAction})
      : _services = services,
        super._();

  final List<ShortService> _services;
  @override
  List<ShortService> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final ShortService? selectedTrigger;
  @override
  final ShortService? selectedAction;

  @override
  String toString() {
    return 'NewAreaFormState(services: $services, selectedTrigger: $selectedTrigger, selectedAction: $selectedAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewAreaFormState &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.selectedTrigger, selectedTrigger) ||
                other.selectedTrigger == selectedTrigger) &&
            (identical(other.selectedAction, selectedAction) ||
                other.selectedAction == selectedAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_services),
      selectedTrigger,
      selectedAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewAreaFormStateCopyWith<_$_NewAreaFormState> get copyWith =>
      __$$_NewAreaFormStateCopyWithImpl<_$_NewAreaFormState>(this, _$identity);
}

abstract class _NewAreaFormState extends NewAreaFormState {
  const factory _NewAreaFormState(
      {required final List<ShortService> services,
      required final ShortService? selectedTrigger,
      required final ShortService? selectedAction}) = _$_NewAreaFormState;
  const _NewAreaFormState._() : super._();

  @override
  List<ShortService> get services;
  @override
  ShortService? get selectedTrigger;
  @override
  ShortService? get selectedAction;
  @override
  @JsonKey(ignore: true)
  _$$_NewAreaFormStateCopyWith<_$_NewAreaFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
