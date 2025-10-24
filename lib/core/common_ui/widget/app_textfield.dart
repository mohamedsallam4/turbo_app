import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType? keyboardType; // Removed default value
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.keyboardType,
     this.obscureText = false,
    this.suffixIcon,
    super.key,
    this.validator,
  });
  @override

  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}