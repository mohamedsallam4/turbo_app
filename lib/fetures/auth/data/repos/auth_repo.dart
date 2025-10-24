import 'package:turbo_app/core/networking/api_error_handler.dart';
import 'package:turbo_app/core/networking/api_result.dart';
import 'package:turbo_app/fetures/auth/data/models/login_request_body.dart';
import 'package:turbo_app/fetures/auth/data/models/login_response.dart';
import 'package:turbo_app/fetures/auth/data/services/auth_service.dart';

class AuthRepo {
  final AuthService service;

  AuthRepo({required this.service});
  
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final response = await service.login(body: body);
      return ApiSuccess(data: response);
    } catch (e) {
      // استخدم ApiError مباشرة
      return ApiError(error: ApiErrorHandler.handle(e));
    }
  }
}