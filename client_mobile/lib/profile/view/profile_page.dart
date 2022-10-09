import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:area/authentication/authentication.dart';

class ProfilePage extends StatelessWidget {
    const ProfilePage({super.key});

    static Route<void> route() {
        return MaterialPageRoute<void>(builder: (_) => const ProfilePage());
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('Profile')),
            body: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        Builder(
                            builder: (context) {
                                final userId = context.select(
                                    (AuthenticationBloc bloc) => bloc.state.user.id,
                                );
                                return Text('UserID: $userId');
                            },
                        ),
                        ElevatedButton(
                            child: const Text('Logout'),
                            onPressed: () {
                                context
                                        .read<AuthenticationBloc>()
                                        .add(AuthenticationLogoutRequested());
                            },
                        ),
                    ],
                ),
            ),
        );
    }
}
