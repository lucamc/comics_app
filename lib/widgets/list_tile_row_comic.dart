import 'package:flutter/material.dart';
import 'package:marvel_comics_app/utils/extensions.dart';

class ListTileRowComic extends StatelessWidget {
  const ListTileRowComic(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.date,
      required this.rate});

  final String image;
  final String title;
  final double price;
  final DateTime date;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 160,
          child: Image.asset(
            image,
          ),
        ),
        15.ph,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              15.pv,
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  12.ph,
                  Text(
                    rate.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              15.pv,
              Text(
                "On sale $date",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              15.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "US Price: \$$price",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.arrow_right_alt_sharp)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
