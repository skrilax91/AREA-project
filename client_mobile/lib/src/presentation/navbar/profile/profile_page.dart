import 'package:area/src/controllers/auth_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});
  static String get routeName => 'profile';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authInfoState = ref.watch(authInfoControllerProvider).requireValue
        as LoggedAuthInfoState;
    final user = authInfoState.authInfo.user;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Profile",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text("Logged as ${user.email}"),
      ],
    );
  }
}
