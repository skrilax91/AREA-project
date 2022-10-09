import 'package:formz/formz.dart';

enum PasswordValidatorError { empty }

class Password extends FormzInput<String, PasswordValidatorError> {
    const Password.pure() : super.pure('');
    const Password.dirty([super.value = '']) : super.dirty();

    @override
    PasswordValidatorError? validator(String? value) {
        return value?.isNotEmpty == true ? null : PasswordValidatorError.empty;
    }
}
