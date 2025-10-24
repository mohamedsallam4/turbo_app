import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo_app/core/networking/api_error_model.dart';
import 'package:turbo_app/fetures/auth/data/models/login_request_body.dart';
import 'package:turbo_app/fetures/auth/data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.repo}) : super(LoginInitial());

  final AuthRepo repo;

  Future<void> login(LoginRequestBody body) async {
    emit(LoginLoading()); // ✅ مهم علشان نظهر الـ loading
    final result = await repo.login(body);
    result.when(
      onSuccess: (data) {
        emit(LoginSuccess());
      },
      onError: (error) {
        emit(LoginError(error: error));
      },
    );
  }
}
