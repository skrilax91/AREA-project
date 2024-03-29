import "dart:async";
import 'package:area/src/domain/entities/user.dart';
import "package:equatable/equatable.dart";
import "package:area/src/domain/entities/result.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../domain/entities/auth_info.dart";
import "../domain/repositories/auth_info_repository.dart";

part "auth_info_state.dart";

class AuthInfoController extends AsyncNotifier<BaseAuthInfoState> {
  AuthInfoController();

  @override
  FutureOr<BaseAuthInfoState> build() {
    return const AuthInfoState(isLoading: true);
    return LoggedAuthInfoState(
      authInfo: AuthInfo(
        token: "bWMCUWsTUUhx1JpAI55jSIm4m1JEdqXkN2aWu9vj",
        user: User(
          id: 3,
          email: "test@hollow.moe",
        ),
      ),
    );
  }

  Future<void> login(String email, String password) async {
    state = const AsyncAuthInfoState.data(AuthInfoState(isLoading: true));
    state = await AsyncAuthInfoState.guard(() async {
      final result = await ref
          .read(authInfoRepositoryProvider)
          .login(email: email, password: password);

      if (result.type == ResultType.error) {
        return AuthInfoState(
            hasError: true, errorMessage: result.requireError.toString());
      } else {
        return LoggedAuthInfoState(authInfo: result.requireValue);
      }
    });
  }

  bool get isLoading => state.isLoading;
}

final authInfoControllerProvider =
    AsyncNotifierProvider<AuthInfoController, BaseAuthInfoState>(() {
  return AuthInfoController();
});
