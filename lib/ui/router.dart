import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:template_restau/ui/views/notificationPage.dart';
import './views/loginScreen.dart';
import './views/HomePage.dart';
import './views/mainHome.dart';
import './views/shoppingCart.dart';



const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/mainHome':
        return MaterialPageRoute(builder: (_)=> MainHome());
      case '/notification':
        return MaterialPageRoute(builder: (context) => NotificationPage()) ;
      case '/shoppingCart':
        return MaterialPageRoute(builder: (context) => ShoppingCart());
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