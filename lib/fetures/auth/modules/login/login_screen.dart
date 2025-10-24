
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo_app/core/di.dart';
import 'package:turbo_app/fetures/auth/modules/login/cubit/login_cubit.dart';
import 'package:turbo_app/fetures/auth/modules/login/widget/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(repo: getIt()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0),
                
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

                // Login Form
                LoginForm(),

               
                SizedBox(height: 16.0),

                // Or Login With
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Or Login With')],
                ),

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
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}