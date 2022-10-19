import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_code_union/src/common/custom_line.dart';
import 'package:test_task_code_union/src/feed_screen.dart';

class DetailScreen extends StatelessWidget {

  final Place place;

  const DetailScreen(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: const Color(0xFFF3F4F6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .3,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(place.buildImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CupertinoButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const PlaceList();
                                  },
                                ),
                              );
                            },
                            child: const Icon(Icons.arrow_back_ios, color: Colors.white,
                            size: 16)),
                        Spacer(),
                        Expanded(
                          child: Text(
                            place.title,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        const Spacer(),
                        const Icon(CupertinoIcons.heart_fill, color: Colors.white),
                      ],
                    )),
              ],
            ),
             SizedBox(height: 16),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                place.title,
                style: TextStyle(
                  color: Color(0xFF929292),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                place.detailDescription,
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Подробнее',
                style: TextStyle(
                  color: Color(0xFF4631D2),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const DetailPageLine(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Icon(CupertinoIcons.time, color: Colors.black, size: 16),
                  SizedBox(width: 12),
                  Text(
                    "Работаем с 20:00 до 18:00",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Icon(CupertinoIcons.location_solid, color: Colors.black, size: 16),
                  SizedBox(width: 12),
                  Text(
                    "Аль-Фараби",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const DetailPageLine(),
          ],
        ),
      ),
    );
  }
}

class DetailPageLine extends StatelessWidget {
  const DetailPageLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: const Color(0xFFE0E6ED),
    );
  }
}
