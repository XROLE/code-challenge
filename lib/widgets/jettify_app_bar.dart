import 'package:flutter/material.dart';

Row jettifyAppBar(String title, BuildContext context,
    [bool showDrawer = false]) {
  return Row(children: [
    IconButton(
      icon: Icon(showDrawer ? Icons.sort : Icons.keyboard_arrow_left),
      onPressed: showDrawer
          ? () {
              Navigator.pushNamed(context, '/input-receiver-info');
            }
          : () {
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
