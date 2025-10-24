import 'package:flutter/material.dart';
import 'package:turbo_app/config/router/route.dart';
import 'package:turbo_app/config/router/router_transitions.dart';
import 'package:turbo_app/fetures/auth/modules/login/login_screen.dart';

class AppRouter {
  // دا بيدير التنقل في التطبيق
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //كلاس من نوع  روت
    //*بيستقبل روت سيتينج  وهسميه سيتينج علشان اسويتش بيه على اسم الفايل ال انا مباصيه في الروت نيم كلاس
    switch (settings.name) {
      case RouteName.login:
      //*في حالة اني محتاج وضغطت على لوج ان ف هيستدعيلي اللوج ان اسكرين 
        return RouterTransitions.build(LoginScreen());
 
      default:
      //*لو انا مباصيتلوش اي اسكرين ف بالتالي 
      //هيرجعلي اسكرين فيها اسكافولد وفيها بيزيك بيدج فيها ان مفيش روت  ودا بردو ال هيرجعلي لو غلطان مثلا في اسم الاسترينج بتاع الصفحه 
            return RouterTransitions.build(Scaffold(
              body: Center(child: Text("No Route"),),
            ));
    }
  
  }
}
