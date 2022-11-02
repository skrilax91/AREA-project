import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required int id,
    required String email,
    required String pseudo,
    required String avatar,
  }) : super(
          id: id,
          email: email,
          pseudo: pseudo,
          avatar: avatar,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      email: json[""],
      pseudo: json["pseudo"],
      avatar: json["avatar"],
    );
  }

  User toEntity() {
    return User(
      id: id,
      email: email,
      pseudo: pseudo,
      avatar: avatar,
    );
  }
}
