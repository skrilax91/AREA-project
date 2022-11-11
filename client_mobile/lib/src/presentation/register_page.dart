import 'package:area/src/controllers/register_controller.dart';
import 'package:area/src/controllers/register_state.dart';
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "router.dart";
import "login_page.dart";
import "widgets/input_field.dart";
import "controllers/user_register_form_controller.dart";

class RegisterForm extends ConsumerWidget {
  RegisterForm({
    required String email,
    required String password,
  })  : _email = TextEditingController(text: email),
        _password = TextEditingController(text: password);

  final TextEditingController _email;
  final TextEditingController _password;
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerState = ref.read(registerControllerProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InputField(
          title: "Email",
          onChanged: (email) => ref
              .read(userRegisterFormControllerProvider.notifier)
              .setEmail(email),
          error: ref
              .watch(userRegisterFormControllerProvider)
              .form
              .email
              .errorMessage,
          controller: _email,
        ),
        InputField(
          title: "Password",
          isPassword: true,
          onChanged: (pass) => ref
              .read(userRegisterFormControllerProvider.notifier)
              .setPassword(pass),
          error: ref
              .watch(userRegisterFormControllerProvider)
              .form
              .password
              .errorMessage,
          controller: _password,
        ),
        InputField(
          title: "Confirm Password",
          isPassword: true,
          onChanged: (pass) => ref
              .read(userRegisterFormControllerProvider.notifier)
              .setConfirmPassword(pass),
          error: ref
              .watch(userRegisterFormControllerProvider)
              .form
              .confirmPassword
              .errorMessage,
          controller: _confirmPassword,
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed:
                  ref.watch(userRegisterFormControllerProvider).form.isValid
                      ? () async {
                          ref
                              .read(registerControllerProvider.notifier)
                              .register(_email.text, _password.text);
                        }
                      : null,
              child: const Text("Register"),
            ),
          ],
        ),
      ],
    );
  }
}

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});
  static String get routeName => 'register';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerState = ref.watch(registerControllerProvider);

    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          RegisterForm(
              email: registerState.email, password: registerState.password),
          if (registerState is ErrorRegisterState)
            Text(
              registerState.error ?? "",
              style: TextStyle(
                color: Theme.of(context).errorColor,
              ),
            ),
          if (registerState is SuccessRegisterState)
            Text(
              "User ${registerState.email} registered !",
              style: TextStyle(
                color: Theme.of(context).highlightColor,
              ),
            ),
          GestureDetector(
            child: Text(
              "Or Login",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(decoration: TextDecoration.underline),
            ),
            onTap: () => ref.read(routerProvider).go(LoginPage.routeLocation),
          ),
        ],
      ),
    );
  }
}
