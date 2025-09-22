import 'package:flutter/material.dart';
import 'package:turbo_app/config/router/app_router.dart';
import 'package:turbo_app/config/router/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.login,
onGenerateRoute:AppRouter().onGenerateRoute ,
    );
  }
}

