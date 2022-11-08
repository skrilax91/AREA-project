import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:email_validator/email_validator.dart";

import "router.dart";
import "login_page.dart";

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email",
            ),
            validator: (String? email) {
              if (email == null) return "Email is required.";
              if (!EmailValidator.validate(email)) return "Invalid Email.";
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Password",
            ),
            validator: (String? password) {
              if (password == null) return "Password can't be empty.";
              if (password.isEmpty) return "Password can't be empty.";
            },
            obscureText: true,
          ),
          const SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              const Spacer(),
              OutlinedButton(
                onPressed: _submittable() ? _submit : null,
                child: const Text("Register"),
              )
            ],
          ),
        ],
      ),
    );
  }

  bool _submittable() {
    return true;
  }

  void _submit() {}
}

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});
  static String get routeName => 'register';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: null,
      body: Column(children: <Widget>[
        const SizedBox(
          height: 30.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegisterForm(),
        ),
        GestureDetector(
          child: Text(
            "Or Login",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(decoration: TextDecoration.underline),
          ),
          onTap: () => ref.read(routerProvider).go(LoginPage.routeLocation),
        ),
      ]),
    );
  }
}
