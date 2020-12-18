import 'package:flutter/material.dart';
import 'package:jetiffy/utils/jettify_colors.dart';
import 'package:jetiffy/widgets/jettify_input_widget.dart';

Container receiversInfoComponent() {
  return Container(
    child: Column(children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 310,
              child: jetiffyInput('Receiver\'s Name'),
            ),
            Container(
              height: 25,
              decoration: BoxDecoration(
                color: Color(JetiffyColor.danger()),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Icon(Icons.minimize, color: Colors.white),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 10),
      jetiffyInput('Receiver\'s Location'),
      SizedBox(height: 10),
      jetiffyInput('item Name'),
    ]),
  );
}
