import 'package:flutter/material.dart';
import 'package:turbo_app/core/common_ui/widget/app_textfield.dart';
import 'package:turbo_app/fetures/auth/common/password_textfield.dart'; // استيراد الملف الجديد

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Message
              Text(
                'Hello, Welcome Back 👋',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Happy to see you again, please login here.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 24.0),

              // Email Field (using CustomTextField)
              CustomTextField(
                controller: _emailController,
                labelText: 'Email Address',
                hintText: 'Enter your email address',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),

              // Password Field (using PasswordTextField)
              PasswordTextField(
                controller: _passwordController,
              ),
              SizedBox(height: 16.0),

              // Remember Me and Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value ?? false;
                          });
                        },
                      ),
                      Text('Remember Me'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Add forgot password logic here
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 16.0),

              // Register Link
              Center(
                child: TextButton(
                  onPressed: () {
                    // Add register navigation logic here
                  },
                  child: Text(
                    "Don't have an account? Register",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Or Login With
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Or Login With'),
                ],
              ),
              SizedBox(height: 8.0),

              // Social Login Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: IconButton(
                      iconSize: 40,
                      icon: Image.asset('assets/icons/facebook.gif'),
                      onPressed: () {
                        // Add Facebook login logic here
                      },
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: IconButton(
                      iconSize: 40,
                      icon: Image.asset('assets/icons/google.gif'),
                      onPressed: () {
                        // Add Google login logic here
                      },
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: IconButton(
                      iconSize: 40,
                      icon: Image.asset('assets/icons/twitter.gif'),
                      onPressed: () {
                        // Add Twitter login logic here
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,)
            ],
          ),
        ),
      ),
    );
  }
}