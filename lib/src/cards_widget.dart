import 'package:flutter/cupertino.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemExtent: 343,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFFEFEFE),
                  border: Border.all(
                      color: CupertinoColors.black.withOpacity(0.2)),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                    BoxShadow(color: CupertinoColors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),

                    ),
                  ]),
              clipBehavior: Clip.hardEdge,

              child: Column(
                children: const [
                  Image(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1551383616-a9e150c07fca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'))
                ],
              ),
            ),
          );
        });
  }
}
