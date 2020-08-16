import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/ui/view/flutter_basic/flutter_basic.dart';
import 'package:learn_flutter/ui/view/home_page.dart';
import 'package:learn_flutter/ui/view/state_management/list_menu_state.dart';

class Router {

  static const String root = '/';
  static const String homePage = '/homePage';
  static const String flutterBasic = '/flutterBasic';
  static const String listMenuState = '/listMenuState';

  static Route<dynamic> generateRoute(RouteSettings settings){
    
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => HomePage());
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case flutterBasic:
        return MaterialPageRoute(builder: (_) => FlutterBasicPage());  
      case listMenuState:
        return MaterialPageRoute(builder: (_) => ListMenuState());    
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}')),
            ),
          );
    }
  }
}