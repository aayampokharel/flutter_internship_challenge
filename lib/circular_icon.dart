import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

Column circularIcon(IconData icon, String text) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: const Color.fromARGB(86, 65, 152, 192),
        child: IconButton(
          icon: Icon(
            icon,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
        child: stringLightColored(text),
      ),
    ],
  );
}
