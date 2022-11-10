import "package:freezed_annotation/freezed_annotation.dart";

import "../domain/entities/user_register.dart";

part "user_register_form_state.freezed.dart";

@freezed
class UserRegisterFormState with _$UserRegisterFormState {
  const factory UserRegisterFormState(UserRegisterEntity form) =
      _UserRegisterFormState;
}
