import 'package:flutter/material.dart';

//@ this is used for the sake of simplicity . Instead in the future , MVC model may be applied later in the future .
Widget stringBold(String text, {double? size, Color? color}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size ?? 18.0,
        color: color ?? Colors.black),
  );
}

Widget stringLightColored(String text, {Color? color, TextAlign? align}) {
  return Text(
    text,
    textAlign: align ?? TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.w100,
      color: color,
    ),
  );
}
