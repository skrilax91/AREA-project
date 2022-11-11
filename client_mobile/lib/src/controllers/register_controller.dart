import 'package:area/src/domain/entities/result.dart';
import 'package:area/src/domain/repositories/register_repository.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import "register_state.dart";

class RegisterController extends StateNotifier<BaseRegisterState> {
  final RegisterRepository _registerRepository;
  RegisterController({
    required RegisterRepository registerRepository,
  })  : _registerRepository = registerRepository,
        super(const RegisterState());

  Future<void> register(String email, String password) async {
    state = LoadingRegisterState(email: email, password: password);
    final result =
        await _registerRepository.register(email: email, password: password);
    if (result.type == ResultType.error) {
      state = ErrorRegisterState(
          email: email,
          password: password,
          error: result.requireError.toString());
    } else {
      state = SuccessRegisterState();
    }
  }
}

final registerControllerProvider =
    StateNotifierProvider<RegisterController, BaseRegisterState>((ref) {
  final registerRepository = ref.watch(registerRepositoryProvider);
  return RegisterController(registerRepository: registerRepository);
});
