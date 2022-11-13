import "package:equatable/equatable.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../presentation/controllers/new_area_form_state.dart";

part "new_area_state.freezed.dart";

abstract class BaseNewAreaState<T extends BaseNewAreaState<T>>
    extends Equatable {
  final NewAreaFormState form;

  const BaseNewAreaState({
    this.form = NewAreaFormState.empty,
  });

  @override
  List<Object?> get props => [form];
}

@freezed
class NewAreaState extends BaseNewAreaState<NewAreaState> with _$NewAreaState {
  const NewAreaState._();

  const factory NewAreaState({
    @Default(NewAreaFormState.empty) NewAreaFormState form,
  }) = _NewAreaState;
}

@freezed
class LoadingNewAreaState extends BaseNewAreaState<LoadingNewAreaState>
    with _$LoadingNewAreaState {
  const LoadingNewAreaState._();

  const factory LoadingNewAreaState({
    @Default(NewAreaFormState.empty) NewAreaFormState form,
  }) = _LoadingNewAreaState;
}

@freezed
class SuccessNewAreaState extends BaseNewAreaState<SuccessNewAreaState>
    with _$SuccessNewAreaState {
  const SuccessNewAreaState._();

  const factory SuccessNewAreaState({
    @Default(NewAreaFormState.empty) NewAreaFormState form,
  }) = _SuccessNewAreaState;
}

@freezed
class ErrorNewAreaState extends BaseNewAreaState<ErrorNewAreaState>
    with _$ErrorNewAreaState {
  const ErrorNewAreaState._();

  const factory ErrorNewAreaState({
    @Default(NewAreaFormState.empty) NewAreaFormState form,
    @Default("Unknown Error") String error,
  }) = _ErrorNewAreaState;
}
