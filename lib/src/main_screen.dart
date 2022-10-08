import 'package:flutter/cupertino.dart';
import 'package:test_task_code_union/src/cards_widget.dart';
import 'package:test_task_code_union/src/feed_screen.dart';
import 'package:test_task_code_union/src/profile_screen.dart';
import 'package:test_task_code_union/src/registration_screen.dart';

import 'auth_screen.dart';
import 'favourite_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.map)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return const FeedScreen();
              case 1:
                return const CardWidget();
              case 2:
                return const FavouriteScreen ();
              case 3:
                return const ProfileScreen();
              default:
                return const RegistrationScreen();
            }
          },
        );
      },
    );
  }
}