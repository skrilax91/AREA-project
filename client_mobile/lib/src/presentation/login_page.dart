import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import 'router.dart';
import 'register_page.dart';
import "../controllers/auth_info_controller.dart";

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});
  static String get routeName => 'login';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Login Page"),
            ElevatedButton(
              onPressed: () async {
                ref
                    .read(authInfoControllerProvider.notifier)
                    .login("myEmail", "myPassword");
              },
              child: const Text("Login"),
            ),
            GestureDetector(
              child: const Text("Register"),
              onTap: () =>
                  ref.read(routerProvider).go(RegisterPage.routeLocation),
            ),
          ],
        ),
      ),
    );
  }
}
