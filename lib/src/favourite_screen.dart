import 'package:flutter/cupertino.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Избранное'),
      ),
      child: SafeArea(
        child: Column(
          children: const [


          ],
        ),
      ),
    );
  }
}