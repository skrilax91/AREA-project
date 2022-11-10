import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "router.dart";
import "register_page.dart";
import "widgets/input_field.dart";
import "controllers/user_login_form_controller.dart";

class LoginForm extends ConsumerWidget {
  LoginForm({super.key});
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InputField(
          title: "Email",
          onChanged: (email) => ref
              .read(userLoginFormControllerProvider.notifier)
              .setEmail(email),
          error: ref
              .watch(userLoginFormControllerProvider)
              .form
              .email
              .errorMessage,
          controller: _email,
        ),
        InputField(
          title: "Password",
          isPassword: true,
          onChanged: (pass) => ref
              .read(userLoginFormControllerProvider.notifier)
              .setPassword(pass),
          error: ref
              .watch(userLoginFormControllerProvider)
              .form
              .password
              .errorMessage,
          controller: _password,
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
          ],
        ),
      ],
    );
  }
}

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});
  static String get routeName => 'login';
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
                "Login",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          LoginForm(),
          GestureDetector(
            child: Text(
              "Or Register",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(decoration: TextDecoration.underline),
            ),
            onTap: () =>
                ref.read(routerProvider).go(RegisterPage.routeLocation),
          ),
        ],
      ),
    );
  }
}
