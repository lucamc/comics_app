import 'package:flutter/material.dart';
import 'package:marvel_comics_app/utils/extensions.dart';

class ListTileComic extends StatelessWidget {
  const ListTileComic({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image)),
        ),
        5.pv,
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
