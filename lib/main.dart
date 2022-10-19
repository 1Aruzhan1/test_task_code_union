import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_task_code_union/src/auth_screen.dart';
import 'package:test_task_code_union/src/registration_screen.dart';
import 'package:test_task_code_union/src/router/router.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox<dynamic>('tokens');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      onGenerateRoute: AppRouter.generateRoute,

      home: AuthScreen(),

    );

}
}

