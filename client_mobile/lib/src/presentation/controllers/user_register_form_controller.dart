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

    if (isEmail || email.isEmpty) {
      emailField = form.email.copyWith(isValid: true);
    } else {
      emailField =
          form.email.copyWith(isValid: false, errorMessage: "Invalid Email");
    }
    state = state.copyWith(form: form.copyWith(email: emailField));
  }

  void setPassword(String password) {
    final isValid = password.length >= 8 && RegExp(r"\d").hasMatch(password);
    UserRegisterEntity form =
        state.form.copyWith(password: Field(value: password));
    late Field passwordField;

    if (isValid || password.isEmpty) {
      passwordField = form.password.copyWith(isValid: true);
    } else {
      passwordField = form.password.copyWith(
          isValid: false,
          errorMessage:
              "Password should be at least 8 characters and have a number.");
    }
    state = state.copyWith(form: form.copyWith(password: passwordField));
  }

  void setConfirmPassword(String confirmPassword) {
    UserRegisterEntity form =
        state.form.copyWith(confirmPassword: Field(value: confirmPassword));
    final isValid = confirmPassword == state.form.password.value;
    late Field confirmPasswordField;

    if (isValid) {
      confirmPasswordField = form.confirmPassword.copyWith(isValid: true);
    } else {
      confirmPasswordField = form.confirmPassword
          .copyWith(isValid: false, errorMessage: "Passwords don't match.");
    }
    state = state.copyWith(
        form: form.copyWith(confirmPassword: confirmPasswordField));
  }
}

final userRegisterFormControllerProvider =
    StateNotifierProvider<UserRegisterFormController, UserRegisterFormState>(
        (ref) {
  return UserRegisterFormController();
});
