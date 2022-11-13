import 'package:area/src/presentation/navbar/area_list/area_list_page.dart';
import 'package:area/src/presentation/navbar/navbar_page.dart';
import 'package:area/src/presentation/navbar/new_area/new_area_page.dart';
import "package:flutter/material.dart";
import '../controllers/short_service_list_controller.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

import "../controllers/auth_info_controller.dart";

import "login_page.dart";
import "splash_page.dart";
import "register_page.dart";
import "navbar/profile/profile_page.dart";

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final authInfoState = ref.watch(authInfoControllerProvider);
  final authInfoController = ref.watch(authInfoControllerProvider.notifier);

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
          path: RegisterPage.routeLocation,
          name: RegisterPage.routeName,
          builder: (context, state) {
            return const RegisterPage();
          }),
      GoRoute(
          path: ProfilePage.routeLocation,
          name: ProfilePage.routeName,
          builder: (context, state) {
            return NavBarPage(currentPage: NavBarPages.navProfile);
          }),
      GoRoute(
          path: NewAreaPage.routeLocation,
          name: NewAreaPage.routeName,
          builder: (context, state) {
            return NavBarPage(currentPage: NavBarPages.navAreaNew);
          }),
      GoRoute(
          path: AreaListPage.routeLocation,
          name: AreaListPage.routeName,
          builder: (context, state) {
            return NavBarPage(currentPage: NavBarPages.navAreaList);
          }),
    ],
    redirect: (context, state) {
      if (authInfoController.isLoading) return null;

      final isAuth = authInfoState.value is LoggedAuthInfoState;

      final isSplash = state.location == SplashPage.routeLocation;
      if (isSplash) {
        return isAuth ? NewAreaPage.routeLocation : LoginPage.routeLocation;
      }
      final isRegister = state.location == RegisterPage.routeLocation;
      if (isRegister) {
        return isAuth ? NewAreaPage.routeLocation : RegisterPage.routeLocation;
      }
      final isLogginIn = state.location == LoginPage.routeLocation;
      if (isLogginIn) {
        return isAuth ? NewAreaPage.routeLocation : null;
      }
      return isAuth ? null : SplashPage.routeLocation;
    },
  );
});
