import "package:equatable/equatable.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "register_state.freezed.dart";

abstract class BaseRegisterState<T extends BaseRegisterState<T>>
    extends Equatable {
  final bool isLoading;
  final String email;
  final String password;

  const BaseRegisterState({
    this.email = "",
    this.password = "",
    this.isLoading = false,
  });

  @override
  List<Object?> get props => [email, password, isLoading];
}

@freezed
class RegisterState extends BaseRegisterState<RegisterState>
    with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    @Default("") String email,
    @Default("") String password,
  }) = _RegisterState;
}

@freezed
class LoadingRegisterState extends BaseRegisterState<LoadingRegisterState>
    with _$LoadingRegisterState {
  const LoadingRegisterState._();

  const factory LoadingRegisterState({
    @Default("") String email,
    @Default("") String password,
    @Default(true) bool isLoading,
  }) = _LoadingRegisterState;
}

@freezed
class ErrorRegisterState extends BaseRegisterState<ErrorRegisterState>
    with _$ErrorRegisterState {
  const ErrorRegisterState._();

  const factory ErrorRegisterState({
    @Default("") String email,
    @Default("") String password,
    String? error,
  }) = _ErrorRegisterState;

  @override
  List<Object?> get props => [email, password, error];
}

@freezed
class SuccessRegisterState extends BaseRegisterState<SuccessRegisterState>
    with _$SuccessRegisterState {
  const SuccessRegisterState._();

  const factory SuccessRegisterState({
    @Default("") String email,
    @Default("") String password,
  }) = _SuccessRegisterState;

  @override
  List<Object?> get props => [email, password];
}
