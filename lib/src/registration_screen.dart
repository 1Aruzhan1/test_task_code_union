import 'package:flutter/cupertino.dart';
import 'package:test_task_code_union/src/common/custom_button.dart';
import 'package:test_task_code_union/src/common/custom_line.dart';
import 'package:test_task_code_union/src/common/custom_textfield.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text("Регистрация"),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),

            const CustomTextField(
              placeholder: 'Логин',
            ),
            const CustomLine(),
            const CustomTextField(
              placeholder: 'Телефон',
            ),
            const CustomLine(),
            const CustomTextField(
              placeholder: 'Почта',
            ),
            const CustomLine(),
            const CustomTextField(
              placeholder: 'Пароль',
            ),
            const CustomLine(),
            const Spacer(),
            const CustomButton(
              text: 'Создать аккаунт',
            ),
            const SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}





