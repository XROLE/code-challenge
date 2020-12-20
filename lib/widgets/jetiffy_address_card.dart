import 'package:flutter/material.dart';
import 'package:jetiffy/utils/jettify_colors.dart';

Card jetiffyAddressCard(String title) {
  return Card(
    elevation: 0.7,
    child: Container(
      height: 43,
      child: Row(children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Color(JetiffyColor.darkGrey()),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.location_on, color: Colors.white),
        ),
        SizedBox(width: 20),
        Container(
          child: Column(children: [
            Container(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 7),
            Container(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Color(
                  JetiffyColor.fadedText(),
                ),
              ),
            )),
          ]),
        )
      ]),
    ),
  );
}
