import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/mega.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Esentai Mall',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 113),
                  Icon(CupertinoIcons.heart_fill),
                ],
              )),
        ],
      ),
    );
  }
}
