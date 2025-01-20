import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

Column circularIcon(String image, String text) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: const Color.fromARGB(86, 65, 152, 192),
        child: IconButton(
          iconSize: 25,
          icon: Image.asset(image),
          onPressed: () {},
        ),
      ),
      stringLightColored(text),
    ],
  );
}
