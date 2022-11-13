import "package:freezed_annotation/freezed_annotation.dart";

import "../domain/entities/user_login.dart";

part "user_login_form_state.freezed.dart";

@freezed
class UserLoginFormState with _$UserLoginFormState {
  const factory UserLoginFormState(UserLoginEntity form) = _UserLoginFormState;
}
