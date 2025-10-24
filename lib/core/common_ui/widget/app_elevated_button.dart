import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo_app/fetures/auth/modules/login/cubit/login_cubit.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.title, this.isLoading,
  });
  final void Function()? onPressed;
  final String title;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        // final isLoading = state is LoginLoading;
        return IgnorePointer(
          ignoring: isLoading==true,
          child: SizedBox(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: onPressed,
              child: isLoading==true
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2.5,
                      ),
                    )
                  : Text(title, style: const TextStyle(fontSize: 18)),
            ),
          ),
        );
      },
    );
  }
}


/*
() {
        log("here");
        if (formKey.currentState!.validate()) {
          context.read<LoginCubit>().login(
            LoginRequestBody(
              email: emailController.text,
              password: passwordController.text,
            ),
            email: '',
            password: '',
          );
        }
      },
       */