import 'package:flutter/material.dart';
import 'package:turbo_app/config/router/app_router.dart';
import 'package:turbo_app/config/router/route.dart';
import 'package:turbo_app/core/di.dart';

void main() {
  setupDependencies();
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
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}

// {
//     "statusCode": 400,
//     "message": "One or more errors occurred!",
//     "errors": {
//         "email": [
//             "Email is not valid."
//         ],
//         "password": [
//             "Password must contain at least one uppercase letter.",
//             "Password must contain at least one digit.",
//             "Password must contain at least one special character."
//         ]
//     }
// }


