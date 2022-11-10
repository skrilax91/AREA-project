import "package:freezed_annotation/freezed_annotation.dart";

import "field.dart";

part "user_register.freezed.dart";

@freezed
class UserRegisterEntity with _$UserRegisterEntity {
  const UserRegisterEntity._();
  const factory UserRegisterEntity({
    required Field email,
    required Field password,
    required Field confirm_password,
  }) = _UserRegisterEntity;

  factory UserRegisterEntity.empty() => const UserRegisterEntity(
        email: Field(value: ""),
        password: Field(value: ""),
        confirm_password: Field(value: ""),
      );

  bool get isValid =>
      email.isValid &&
      password.isValid &&
      password.value == confirm_password.value;
}
