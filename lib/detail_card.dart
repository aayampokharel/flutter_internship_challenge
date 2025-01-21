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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      height: 1400,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              Icon(Icons.location_on, color: Colors.blue[900]),
                              stringLightColored(" Veum Point, Michikoton"),
                              SizedBox(width: 30),
                              Icon(Icons.star, color: Colors.yellow[700]),
                              stringBold("4.6", size: 14),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(86, 65, 152, 192),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "images/cube.png",
                        width: 50,
                        height: 50,
                      ),
                    )
                  ],
                ), //@ end of aston vill hotel Row .
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: stringBold("Common Facilities"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: stringLightColored(
                        "See All",
                        color: Colors.blue[900],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      circularIcon("images/wind.png", "AC"),
                      circularIcon("images/restaurant.png", "Restaurant"),
                      circularIcon("images/water-waves.png", "Swimming\n Pool"),
                      circularIcon(
                          "images/twenty_four.png", "24-Hours \nFront Desk"),
                    ],
                  ),
                ),

                //@end of Row of icons .
                stringBold("Description", size: 25),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 18),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'The Ideal place for those looking for a luxurious and tranquil holiday experience with stunning sea views ....',
                          style: TextStyle(
                            fontSize: 15,
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
                            fontSize: 16,
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
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            "images/googlemap.png",
                            fit: BoxFit.cover,
                          ),
                          height: 200,
                          width: double.infinity,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: Colors.blue[900]),
                            stringLightColored(
                                "9175 Chestnut StreetRome,NY 13440",
                                color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                    image: "images/profilepic_1.jpg",
                    name: "Kim Borrdy",
                    description:
                        "Amazing!The room is good than the picture . Thanks for amazing experience!",
                    rating: "4.5"),
                personalReview(
                    image: "images/profilepic_2.jpg",
                    name: "Mirai Kamzuki",
                    description:
                        "The service is on point ,and I really like the facilities. Good job!",
                    rating: "5.0"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      stringBold("Recommendation", size: 25),
                      stringLightColored("See All", color: Colors.blue[900]),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                recommendation_card(
                    img: "images/hotel_img.jpg",
                    name: "Lumiére Palace",
                    place: "Las Vegas,NV",
                    rating: "4.4",
                    discountedPrice: "\$210",
                    fullPrice: "\$345"),
                recommendation_card(
                  img: "images/ocean_resort.jpg",
                  name: "Ocean View Resort",
                  place: "Miami, FL",
                  rating: "4.7",
                  discountedPrice: "\$180",
                  fullPrice: "\$320",
                ),
                recommendation_card(
                  img: "images/mountain_retreat.jpg",
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
    );
  }
}
