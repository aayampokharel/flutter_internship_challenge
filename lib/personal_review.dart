import 'package:flutter/material.dart';
import 'package:flutter_internship_challenge/text_formatting.dart';

Widget personalReview(
    {String? image,
    String name = "no Name",
    String description = "...",
    String rating = "4.5"}) {
  return ListTile(
      leading: CircleAvatar(
        child: image == null
            ? Icon(Icons.person_off)
            : ClipOval(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
      ),
      title: stringBold(name),
      subtitle: Padding(
        padding: const EdgeInsets.all(8.0),
        child: stringLightColored(description, align: TextAlign.left),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow[700],
          ),
          stringBold(rating)
        ],
      ),
      onTap: () {});
}
