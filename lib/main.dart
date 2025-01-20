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
        body: SingleChildScrollView(
          child: Column(
            children: [
              //img
              //container content
              Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.red,
                  child: Image.asset("images/lounge.jpg")),
              Detail_Card(),
            ],
          ),
        ));
  }
}
