import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:turbo_app/core/networking/api_error_factory.dart';

import 'package:turbo_app/core/networking/api_error_model.dart';
import 'package:turbo_app/core/networking/local_status_code.dart';

class ApiErrorHandler {
  //هنا عملت كلاس علشان يهندل الايرورز ال عندي لان انا عندي اكتر من نوع من انواع الايرور ديو 

  static ApiErrorModel handle(dynamic e) {
    //انا هنا استقبلت الايرور ال راجعلي من الكاتش
    //عملت داله من نوع استاتيك حددتلها الريتيرن والتايب بتاعها من نوع اي بي اي ايرور مودل 
    //سميتها هاندل وباصيتلها في البراميتار بتاعها ال الاي ال في الكاتش ال في الريبو 

    if (e is Exception) {
      
      
      
      //لو ال الاي ايز اكسيبشن فعلا  
//يعني فيه خطأ او فيه اكسبشن 

      if (e is DioException) {
        //طب هنا بقوله لو نوع الخطأ هو دايو اكسبشن هتعملي بقا اسويتشايه ليه لان في اكتر من نوع الايرور اكسيبشن ليها انواع كتيره 


        switch (e.type) {
          // الاسويتش هنا هيكون على نوع ال e ال هوا اصلا ديو اكسيبشن 
          case DioExceptionType.connectionError:
          //لو خطأ في الاتصال 
            return ApiErrorModel(
              message: "No internet connection. Please check your network.",
              icon: Icons.wifi_off,
              statusCode: LocalStatusCode.connectionError,
            );

          case DioExceptionType.connectionTimeout:
          //لو وقت الريسبونس خلص 
            return ApiErrorModel(
              message:
                  "Connection timeout. Server is taking too long to respond.",
              icon: Icons.timer_off,
              statusCode: LocalStatusCode.connectionTimeOut,
            );

          case DioExceptionType.sendTimeout:
//لو تجاوزت وقت الريكويست 
            return ApiErrorModel(
              message: "Request timed out while sending data.",
              icon: Icons.upload_rounded,
              statusCode: LocalStatusCode.sendTimeOut,
            );

          case DioExceptionType.receiveTimeout:
            return ApiErrorModel(
              message: "Request timed out while waiting for server response.",
              icon: Icons.download_rounded,
              statusCode: LocalStatusCode.reciveTimeOut,
            );

          case DioExceptionType.badResponse:
          // اتصال سيئ
            return ApiErrorModel(
              message: "Received an invalid response from the server.",
              icon: Icons.error_outline,
              statusCode: e.response?.statusCode ?? LocalStatusCode.badResponse,
            );

          case DioExceptionType.badCertificate:
            return ApiErrorModel(
              message: "Invalid SSL certificate. Please contact support.",
              icon: Icons.security,
              statusCode: LocalStatusCode.badCertificate,
            );

          case DioExceptionType.cancel:
            return ApiErrorModel(
              message: "The request was cancelled before completion.",
              icon: Icons.cancel_outlined,
              statusCode: LocalStatusCode.cancel,
            );

          case DioExceptionType.unknown:
          default:
            return ApiErrorModel(
              message: "Unexpected error occurred. Please try again later.",
              icon: Icons.error,
              statusCode: LocalStatusCode.unKnown,
            );
        }
      } else {
        // أي exception تاني مش Dio
        return ApiErrorModel(
          message: "An unexpected error occurred. Please try again.",
          icon: Icons.error,
          statusCode: LocalStatusCode.anotherError,
        );
      }
    } else {
      // في حالة إن الغلط مش Exception أصلاً
      return ApiErrorFactory.defaultError;
    }
  }
}
