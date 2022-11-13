import "user.dart";

class AuthInfo {
  final String token;
  final User user;

  AuthInfo({
    required this.token,
    required this.user,
  });
}
