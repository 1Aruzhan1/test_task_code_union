import 'package:flutter/cupertino.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Лента'),
      ),
      child: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            //color: CupertinoColors.activeGreen,
            height: 150,
            width: 348,
            child: const Text("Veee"),
            
            
          ),
        ),
      ),
    );
  }
}
