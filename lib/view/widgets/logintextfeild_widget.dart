import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
    );
  }
}
