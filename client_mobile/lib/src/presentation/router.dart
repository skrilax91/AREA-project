import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controllers/auth_info_controller.dart';

import 'login_page.dart';
import 'splash_page.dart';
import 'register_page.dart';
import 'home_page.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  ref.watch(authInfoControllerProvider);
  final authInfoController = ref.read(authInfoControllerProvider.notifier);

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: SplashPage.routeLocation,
    routes: [
      GoRoute(
          path: SplashPage.routeLocation,
          name: SplashPage.routeName,
          builder: (context, state) {
            return const SplashPage();
          }),
      GoRoute(
          path: LoginPage.routeLocation,
          name: LoginPage.routeName,
          builder: (context, state) {
            return const LoginPage();
          }),
      GoRoute(
          path: HomePage.routeLocation,
          name: HomePage.routeName,
          builder: (context, state) {
            return const HomePage();
          }),
      GoRoute(
          path: RegisterPage.routeLocation,
          name: RegisterPage.routeName,
          builder: (context, state) {
            return const RegisterPage();
          }),
    ],
    redirect: (context, state) {
      if (authInfoController.isLoading) return null;

      final isAuth = authInfoController is LoggedAuthInfoState;

      final isSplash = state.location == SplashPage.routeLocation;
      if (isSplash) {
        return isAuth ? HomePage.routeLocation : LoginPage.routeLocation;
      }
      final isRegister = state.location == RegisterPage.routeLocation;
      if (isRegister) {
        return isAuth ? HomePage.routeLocation : RegisterPage.routeLocation;
      }
      final isLogginIn = state.location == LoginPage.routeLocation;
      if (isLogginIn) {
        return isAuth ? HomePage.routeLocation : null;
      }
      return isAuth ? null : SplashPage.routeLocation;
    },
  );
});
