import 'package:flutter/material.dart';

class ApiErrorModel {
  //مودل الاخطأ المتوقع في الابليكيشن 
  //دا هيكون شكله 
  final String message;
  final IconData icon;
  final int statusCode;

  ApiErrorModel({required this.message, required this.icon, required this.statusCode});
}
