import 'package:flutter/cupertino.dart';
import 'package:test_task_code_union/src/auth_screen.dart';
import 'package:test_task_code_union/src/home_screen.dart';
import 'package:test_task_code_union/src/registration_screen.dart';
import 'package:test_task_code_union/src/router/routing_const.dart';


class AppRouter {

  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
  static final NavigatorState? rootNavigator = rootNavigatorKey.currentState;

  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeRoute:
        return CupertinoPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case authRoute:
      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }

  static Future<void>? replaceRoot(String routeName) {
    return rootNavigator?.pushNamedAndRemoveUntil(routeName, (_) => false);
  }
}