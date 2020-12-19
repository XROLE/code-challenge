import 'package:flutter/material.dart';

Container jetiffyButton(String title) {
  return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 17),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ));
}
