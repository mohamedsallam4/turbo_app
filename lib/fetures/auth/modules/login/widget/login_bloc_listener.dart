import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo_app/core/utils/app_dialog.dart';
import 'package:turbo_app/fetures/auth/modules/login/cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        
        if( state is LoginError ) {
          AppDialog().showApiError(context, state.error);
        }
      },
      child: SizedBox.shrink(),
    );
  }
}