import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

Widget recommendation_card(
    {String? img,
    String name = "",
    String place = "",
    String rating = "",
    String discountedPrice = "",
    String fullPrice = ""}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: Colors.grey[200],
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),
                width: 100,
                height: 100,
                child: img == null
                    ? Icon(Icons.nature_sharp)
                    : Image.asset(img, fit: BoxFit.cover),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      stringBold(name),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, color: Colors.blueGrey),
                          stringLightColored(place),
                        ],
                      ),
                    ],
                  ),
                  //SizedBox(height: 20),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[700]),
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
        )),
  );
}
