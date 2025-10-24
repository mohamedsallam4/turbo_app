import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final Dio _dio;
  
  DioFactory() : _dio = Dio() {
    _dio.options
      ..connectTimeout = Duration(minutes: 1)
      ..receiveTimeout = Duration(minutes: 1)
      ..sendTimeout = Duration(minutes: 5)
      ..headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    
    // إضافة الـ logger interceptor
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args) {
          if (options.path.contains('/posts')) {
            return false;
          }
          return !args.isResponse || !args.hasUint8ListData;
        },
      ),
    );
  }
  
  Dio get dio => _dio;
}