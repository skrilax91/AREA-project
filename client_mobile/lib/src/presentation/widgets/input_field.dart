import "package:flutter/material.dart";

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.title,
    required this.controller,
    this.isPassword = false,
    this.error,
    this.onChanged,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;
  final bool isPassword;
  final String? error;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onChanged: onChanged,
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: title,
            errorText: error,
          ),
        ),
      ],
    );
  }
}
