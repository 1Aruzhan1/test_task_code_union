import 'package:flutter/cupertino.dart';
import 'package:test_task_code_union/src/common/custom_button.dart';
import 'package:test_task_code_union/src/common/custom_line.dart';
import 'package:test_task_code_union/src/common/custom_textfield.dart';
import 'package:test_task_code_union/src/registration_screen.dart';



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
            text: 'Войти', onPressed: () {


          },
          ),

          const SizedBox(
            height: 19,
          ),

          CustomButton(
            text: 'Зарегистрироваться',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return const RegistrationScreen();
                  },
                ),
              );
            },


          ),
        ],

      )),
    );
  }
}
