import 'package:flutter/material.dart';

import 'package:turbo_app/core/networking/api_error_model.dart';
import 'package:turbo_app/core/networking/local_status_code.dart';

class ApiErrorFactory {
  static ApiErrorModel get defaultError => ApiErrorModel(
    message: "Something went wrong",
    icon: Icons.error,
 //لو انا عندي خطأ تاني او خطأ غير الديو اكسيبشن 
    statusCode: LocalStatusCode.defaultError,
  );
}
