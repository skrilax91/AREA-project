import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../controllers/auth_info_controller.dart";

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ElevatedButton(
              onPressed: () async {
                ref.read(authInfoControllerProvider.notifier);
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
