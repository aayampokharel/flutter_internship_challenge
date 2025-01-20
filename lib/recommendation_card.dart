import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

Widget recommendation_card(
    {String name = "",
    String place = "",
    String rating = "",
    String discountedPrice = "",
    String fullPrice = ""}) {
  return Card(
      child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 100, height: 100, color: Colors.blue),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            stringBold(name),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                stringLightColored(place),
              ],
            ),
            SizedBox(width: 100),
            Row(
              children: [
                Icon(Icons.star),
                stringLightColored(rating, color: Colors.yellow[900]),
                stringLightColored("(532)"),
                SizedBox(width: 12),
                stringBold(discountedPrice, size: 15),
                SizedBox(width: 12),
                stringBold(fullPrice, size: 15, color: Colors.pink[700]),
              ],
            )
          ],
        )
      ],
    ),
  ));
}
