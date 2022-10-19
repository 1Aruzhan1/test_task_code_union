import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_task_code_union/src/common/custom_button.dart';
import 'package:test_task_code_union/src/common/custom_line.dart';
import 'package:test_task_code_union/src/common/custom_textfield.dart';

import 'package:test_task_code_union/src/main_screen.dart';
import 'package:test_task_code_union/src/registration_screen.dart';
import 'package:test_task_code_union/src/router/routing_const.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text(
          "Авторизация",
        ),
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomTextField(
            placeholder: 'Логин или Почта',
          ),
          const CustomLine(),
          const CustomTextField(
            placeholder: 'Пароль',
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            text: 'Войти',
            onPressed: ()  {

              Navigator.pushNamed(
                  context, homeRoute);
            },

          ),
          const SizedBox(
            height: 19,
          ),
          CustomButton(
            text: 'Зарегистрироваться',
            onPressed: () {
              Navigator.pushNamed(
                context,  registerRoute);
            },
          ),
        ],
      )),
    );
  }
}
