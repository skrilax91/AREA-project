import "../../domain/entities/user.dart";

class UserModel extends User {
  UserModel({
    required int id,
    required String email,
  }) : super(
          id: id,
          email: email,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      email: json["email"],
    );
  }

  User toEntity() {
    return User(
      id: id,
      email: email,
    );
  }
}
