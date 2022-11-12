import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:email_validator/email_validator.dart";

import "user_login_form_state.dart";
import "../domain/entities/field.dart";
import "../domain/entities/user_login.dart";

class UserLoginFormController extends StateNotifier<UserLoginFormState> {
  UserLoginFormController()
      : super(UserLoginFormState(UserLoginEntity.empty()));

  void setEmail(String email) {
    final isEmail = EmailValidator.validate(email);

    UserLoginEntity form = state.form.copyWith(email: Field(value: email));
    late Field emailField;
    if (isEmail || email == "") {
      emailField = form.email.copyWith(isValid: true);
    } else {
      emailField =
          form.email.copyWith(isValid: false, errorMessage: "Invalid Email");
    }
    state = state.copyWith(form: form.copyWith(email: emailField));
  }

  void setPassword(String password) {}
}

final userLoginFormControllerProvider =
    StateNotifierProvider<UserLoginFormController, UserLoginFormState>((ref) {
  return UserLoginFormController();
});
