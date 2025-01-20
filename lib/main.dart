import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/detail_card.dart';
import 'package:flutter_internship_challenge/text_controller.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DetailPage());
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: stringBold("Detail"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(height: 1650), //@ base layer in stack .
                  Image.asset(
                    "images/lounge.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),

                  Positioned(
                    top: 270,
                    left: 0,
                    right: 0,
                    child: Detail_Card(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
