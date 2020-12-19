import 'package:flutter/material.dart';

Row jettifyAppBar(String title, BuildContext context) {
  return Row(children: [
    IconButton(
      icon: Icon(Icons.keyboard_arrow_left),
      onPressed: () {
        Navigator.pop(context);
      },
      color: Colors.black.withOpacity(0.55),
      iconSize: 30,
    ),
    SizedBox(width: 25),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 23)),
      Container(),
    ]),
  ]);
}
