import 'package:flutter/cupertino.dart';
import 'package:test_task_code_union/src/auth_screen.dart';
import 'package:test_task_code_union/src/feed_screen.dart';
import 'package:test_task_code_union/src/main_screen.dart';
import 'package:test_task_code_union/src/registration_screen.dart';
import 'package:test_task_code_union/src/router/routing_const.dart';

import '../profile_screen.dart';


class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case authRoute:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case registerRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegistrationScreen(),
        );
      case homeRoute:
        return CupertinoPageRoute(
          builder: (context) => const MainScreen(),
        );
      case profileRoute:
        return CupertinoPageRoute(
          builder: (context) => const ProfileScreen(),
        );

      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}