import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './views/loginScreen.dart';
import './views/HomePage.dart';
import './views/mainHome.dart';



const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/mainHome':
        return MaterialPageRoute(builder: (_)=> MainHome());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}