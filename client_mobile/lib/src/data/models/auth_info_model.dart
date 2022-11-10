import "user_model.dart";
import "../../domain/entities/auth_info.dart";

class AuthInfoModel extends AuthInfo {
  AuthInfoModel({
    required String token,
    required UserModel user,
  }) : super(token: token, user: user);

  factory AuthInfoModel.fromJson(Map<String, dynamic> json) {
    return AuthInfoModel(
      token: json["token"],
      user: UserModel.fromJson(json["user"]),
    );
  }

  AuthInfo toEntity() {
    return AuthInfo(
      token: token,
      user: user,
    );
  }
}
