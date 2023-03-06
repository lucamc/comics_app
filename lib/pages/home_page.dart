import 'package:flutter/material.dart';
import 'package:marvel_comics_app/utils/extensions.dart';
import 'package:marvel_comics_app/widgets/custom_padding.dart';
import 'package:marvel_comics_app/widgets/list_tile.comic.dart';
import 'package:marvel_comics_app/widgets/list_tile_row_comic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: CustomPadding(
          child: Column(
            children: [
              kToolbarHeight.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        child: Text(
                          'US',
                        ),
                      ),
                      15.ph,
                      const Text(
                        'Usuario Pruebas',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.search,
                    size: 32,
                  )
                ],
              ),
              30.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best selling comics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              30.pv,
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListTileComic(
                        image: "assets/images/spiderman.jpg",
                        title: "Spiderman"),
                    20.ph,
                    ListTileComic(
                      image: "assets/images/venom.jpg",
                      title: "Venom",
                    ),
                    20.ph,
                    ListTileComic(
                      image: "assets/images/iron.jpeg",
                      title: "Iron Man",
                    )
                  ],
                ),
              ),
              15.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Updated',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              15.pv,
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTileRowComic(
                      image: "assets/images/spiderman.jpg",
                      title: "Spiderman",
                      price: 12.99,
                      date: DateTime.now(),
                      rate: 4.5,
                    ),
                    15.pv,
                    ListTileRowComic(
                      image: "assets/images/iron.jpeg",
                      title: "Iron man",
                      price: 14.99,
                      date: DateTime.now(),
                      rate: 4.0,
                    ),
                    15.pv,
                    ListTileRowComic(
                      image: "assets/images/venom.jpg",
                      title: "Venom",
                      price: 10.99,
                      date: DateTime.now(),
                      rate: 3.5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
