// core/common_ui/widget/password_textfield.dart
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordTextField({required this.controller, Key? key})
    : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;
  String? _passwordValidationMessage;

  // دالة للتحقق من قوة كلمة المرور
  // void _validatePassword() {
  //   String password = widget.controller.text;
  //   if (password.isEmpty) {
  //     setState(() {
  //       _passwordValidationMessage = 'Please enter a password';
  //     });
  //   } else if (password.length < 6) {
  //     setState(() {
  //       _passwordValidationMessage = 'Password must be at least 6 characters';
  //     });
  //   } else if (!password.contains(RegExp(r'[A-Z]'))) {
  //     setState(() {
  //       _passwordValidationMessage = 'Password must contain an uppercase letter';
  //     });
  //   } else if (!password.contains(RegExp(r'[0-9]'))) {
  //     setState(() {
  //       _passwordValidationMessage = 'Password must contain a number';
  //     });
  //   } else {
  //     setState(() {
  //       _passwordValidationMessage = 'Password is strong!';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          controller: widget.controller,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                // IconButton(
                //   icon: Icon(Icons.check_circle, color: Colors.green),
                //   onPressed: _validatePassword,
                // ),
              ],
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
          obscureText: _obscureText,
        ),
        if (_passwordValidationMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              _passwordValidationMessage!,
              style: TextStyle(
                color: _passwordValidationMessage!.contains('strong')
                    ? Colors.green
                    : Colors.red,
                fontSize: 12,
              ),
            ),
          ),
      ],
    );
  }
}
