import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_code_union/src/detail_screen.dart';

class Place {
  final String buildImage;
  final String title;
  final String description;

  Place({
    required this.buildImage,
    required this.title,
    required this.description,
  });
}

class PlaceList extends StatefulWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  State<PlaceList> createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  final _places = [
    Place(
      buildImage: 'assets/img/mega.png',
      title: "Mega Center",
      description:
          "Один из крупнейших торговых центров в Алматы по ул. Розыбакиева",
    ),
    Place(
      buildImage: 'assets/img/esentai.png',
      title: "Esentai Mall",
      description:
          "Один из крупнейших торговых центров в Алматы по ул. Аль-Фараби",
    ),
    Place(
      buildImage: 'assets/img/mega.png',
      title: "Asia Park",
      description:
          "Один из крупнейших торговых центров в Алматы по ул. Аль-Фараби",
    ),
  ];
  var _filteredPlaces = <Place>[];

  final _searchController = TextEditingController();

  void _searchPlaces() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredPlaces = _places.where((Place place) {
        return place.title.contains(query);
      }).toList();
    } else {
      _filteredPlaces = _places;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _searchController.addListener(_searchPlaces);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: CupertinoSearchTextField(
              controller: _searchController,
              placeholder: "Поиск",
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredPlaces.length,
                itemExtent: 250,
                itemBuilder: (BuildContext context, int index) {
                  final place = _places[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Material(
                      color: const Color(0xFFFEFEFE),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(6),
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => const DetailScreen(),
                          ));
                        },
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(place.buildImage),
                            ),
                            const SizedBox(height: 11),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          place.title,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        Expanded(
                                          child: Text(
                                            place.description,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xFF929292),
                                                fontWeight: FontWeight.w400),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  const Icon(CupertinoIcons.heart,
                                      color: Colors.black),
                                  const SizedBox(width: 24),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
