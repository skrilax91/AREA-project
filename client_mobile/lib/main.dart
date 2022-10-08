import 'package:flutter/material.dart';
import 'package:area/app.dart';
import 'package:user_repository/user_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';

void main() {
    runApp(
        App(
            authenticationRepository: AuthenticationRepository(),
            userRepository: UserRepository(),
        ),
    );
}
