import 'package:flutter/material.dart';
import 'package:jetiffy/utils/jettify_colors.dart';

TextFormField jetiffyInput(String txt, ) {
  return TextFormField(
    decoration: InputDecoration(
      fillColor: Color(JetiffyColor.primary()),
      focusColor: Colors.red,
      filled: true,
      labelText: txt,
      labelStyle: TextStyle(color: Color(JetiffyColor.inputLabels()).withOpacity(0.5)),
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
        borderSide: new BorderSide(
            color: Color(JetiffyColor.inputLabels()).withOpacity(0.2),
      ),)
    ),
  );
}
