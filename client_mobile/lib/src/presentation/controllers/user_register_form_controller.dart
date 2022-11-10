import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:email_validator/email_validator.dart";

import "user_register_form_state.dart";
import "../domain/entities/field.dart";
import "../domain/entities/user_register.dart";

class UserRegisterFormController extends StateNotifier<UserRegisterFormState> {
  UserRegisterFormController()
      : super(UserRegisterFormState(UserRegisterEntity.empty()));

  void setEmail(String email) {
    final isEmail = EmailValidator.validate(email);

    UserRegisterEntity form = state.form.copyWith(email: Field(value: email));
    late Field emailField;
    if (isEmail || email == "") {
      emailField = form.email.copyWith(isValid: true);
    } else {
      emailField =
          form.email.copyWith(isValid: false, errorMessage: "Invalid Email");
    }
    state = state.copyWith(form: form.copyWith(email: emailField));
  }

  void setPassword(String pass) {}

  void setConfirmPassword(String pass) {}
}

final userRegisterFormControllerProvider =
    StateNotifierProvider<UserRegisterFormController, UserRegisterFormState>(
        (ref) {
  return UserRegisterFormController();
});
