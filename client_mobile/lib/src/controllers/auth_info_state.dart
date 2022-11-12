part of "auth_info_controller.dart";

typedef AsyncAuthInfoState = AsyncValue<AuthInfoState>;

abstract class BaseAuthInfoState<T extends BaseAuthInfoState<T>>
    extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;

  const BaseAuthInfoState({
    this.isLoading = false,
    this.hasError = false,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [isLoading, hasError];

  @override
  String toString() => '$runtimeType: $props';
}

class AuthInfoState extends BaseAuthInfoState<AuthInfoState> {
  const AuthInfoState({
    super.isLoading = false,
    super.hasError = false,
    super.errorMessage,
  });
}

class LoggedAuthInfoState extends BaseAuthInfoState<LoggedAuthInfoState> {
  final AuthInfo authInfo;

  const LoggedAuthInfoState({
    required this.authInfo,
  }) : super(
          isLoading: false,
          hasError: false,
        );

  @override
  List<Object?> get props => [isLoading, hasError, authInfo];
}
