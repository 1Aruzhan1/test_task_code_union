import 'package:flutter/cupertino.dart';

import 'package:test_task_code_union/src/main_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Лента'),
      ),

      child: SafeArea(
        child: Column(
          children:
          const [
            Padding(
              padding: EdgeInsets.all(16),
              child: CupertinoSearchTextField(

                padding: EdgeInsets.all(16),
                placeholder: "Поиск",
              ),
            ),
          ],




        ),
      ),
    );
  }
}
