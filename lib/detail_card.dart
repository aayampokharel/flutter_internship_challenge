import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/circular_icon.dart';
import 'package:flutter_internship_challenge/personal_review.dart';
import 'package:flutter_internship_challenge/recommendation_card.dart';

import 'package:flutter_internship_challenge/text_formatting.dart';

class Detail_Card extends StatelessWidget {
  const Detail_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Use margin instead of padding for spacing.
            Row(
              //@ this is for aston vill hotel , circle .
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    stringBold("The Aston Vill Hotel", size: 25),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                      child: Row(
                        children: [
                          //! icon to be added .
                          stringLightColored("Veum Point, Michikoton"),
                          SizedBox(width: 25),
                          Icon(Icons.star),
                          stringBold("4.6", size: 14),
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.circle),
              ],
            ), //@ end of aston vill hotel Row .
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Wrap the "Common Facilities" text with an Expanded widget
                stringBold("Common Facilities"),
                // Wrap the "See All" text with an Expanded widget
                TextButton(
                  onPressed: () {},
                  child: stringLightColored(
                    "See All",
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                circularIcon(Icons.wind_power, "AC"),
                circularIcon(Icons.business_outlined, "Restaurant"),
                circularIcon(Icons.waves_outlined, "Swimming\n Pool"),
                circularIcon(Icons.numbers, "24-Hours \nFront Desk"),
              ],
            ),

            //@end of Row of icons .
            stringBold("Description", size: 25),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'The Ideal place for those looking for a luxurious and tranquil holiday experience with stunning sea views ....',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Read More clicked!');
                        },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                stringBold("Location", size: 25),
                stringLightColored(
                  "Open Map",
                  color: Colors.blue[900],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                child: Center(child: Text("google map pic ")),
                height: 200,
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                stringLightColored("9175 Chestnut StreetRome,NY 13440",
                    color: Colors.grey),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stringBold("Reviews", size: 25),
                  stringLightColored("See All", color: Colors.blue[900]),
                ],
              ),
            ),
            personalReview(
                name: "Kim Borrdy",
                description:
                    "Amazing!The room is good than the picture . Thanks for amazing experience!",
                rating: "4.5"),
            personalReview(
                name: "Mirai Kamzuki",
                description:
                    "The service is on point ,and I really like the facilities. Good job!",
                rating: "5.0"),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stringBold("Recommendation", size: 25),
                  stringLightColored("See All", color: Colors.blue[900]),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  recommendation_card(
                      name: "Lumiére Palace",
                      place: "Las Vegas,NV",
                      rating: "4.4",
                      discountedPrice: "\$210",
                      fullPrice: "\$345"),
                  recommendation_card(
                    name: "Ocean View Resort",
                    place: "Miami, FL",
                    rating: "4.7",
                    discountedPrice: "\$180",
                    fullPrice: "\$320",
                  ),
                  recommendation_card(
                    name: "Mountain Retreat",
                    place: "Aspen, CO",
                    rating: "4.9",
                    discountedPrice: "\$300",
                    fullPrice: "\$450",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
