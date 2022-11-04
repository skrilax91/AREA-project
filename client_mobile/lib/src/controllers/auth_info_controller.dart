import "dart:developer" as developer;
import "package:equatable/equatable.dart";
import 'package:area/src/domain/entities/result.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../domain/entities/auth_info.dart";
import "../domain/repositories/auth_info_repository.dart";

part "auth_info_state.dart";

class AuthInfoController extends StateNotifier<BaseAuthInfoState> {
  final AuthInfoRepository _authInfoRepository;

  AuthInfoController({
    required AuthInfoRepository authInfoRepository,
  })  : _authInfoRepository = authInfoRepository,
        super(const AuthInfoState());

  Future<void> login({required String email, required String password}) async {
    state = const AuthInfoState(isLoading: true);
    final result =
        await _authInfoRepository.login(email: email, password: password);
    switch (result.type) {
      case ResultType.value:
        developer.log("Logged In !", name: "AuthInfoController::login");
        state = LoggedAuthInfoState(authInfo: result.requireValue);
        return;
      case ResultType.error:
        final error = result.requireError.toString();
        developer.log(
          "Error !",
          name: "AuthInfoController::login",
          error: error,
        );
        state = AuthInfoState(hasError: true, errorMessage: error);
        return;
    }
  }
}
