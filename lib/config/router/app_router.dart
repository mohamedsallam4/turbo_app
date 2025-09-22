import 'package:flutter/material.dart';
import 'package:turbo_app/config/router/route.dart';
import 'package:turbo_app/config/router/router_transitions.dart';
import 'package:turbo_app/fetures/auth/modules/login/login_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return RouterTransitions.build(LoginScreen());
 
      default:
            return RouterTransitions.build(Scaffold(
              body: Center(child: Text("No Route"),),
            ));
    }
  
  }
}
