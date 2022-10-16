import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_code_union/src/auth_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text('Профиль'),
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 38),
              const SizedBox(
                height: 96,
                width: 96,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFF3F4F6),
                  backgroundImage:
                      NetworkImage('https://img.icons8.com/3d-fluency/344/businesswoman.png'),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Уразбекова Аружан',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              const Text(
                'urazbekovaaruzhan@gmail.com',
                style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                    color: const Color(0xFFffffff),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Выйти",
                      style: TextStyle(color: Color(0xFFEC3A4D), fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const AuthScreen();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
