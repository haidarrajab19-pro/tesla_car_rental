import 'package:api/CORE/routing/routs.dart';
import 'package:api/feature/logic/logic_screnn.dart';
import 'package:api/feature/onbording/on_bording_Screen.dart';
// import 'package:api/feature/ui/logic_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route generateRoute (RouteSettings settings) {
    switch (settings.name) {
      
      case Routes.onbordingScreen:
        return MaterialPageRoute(builder: (_) => const OnbordingScreen());
    case Routes.LoginScreen:
  return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
     


  }
  
}