import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "router.dart";
import "login_page.dart";
import "widgets/input_field.dart";
import "controllers/user_register_form_controller.dart";

class RegisterForm extends ConsumerWidget {
  RegisterForm({super.key});
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
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
              .confirm_password
              .errorMessage,
          controller: _confirmPassword,
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
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
          RegisterForm(),
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
