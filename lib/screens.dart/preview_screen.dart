import 'package:flutter/material.dart';
import 'package:jetiffy/components/jettify_accordion.dart';
import 'package:jetiffy/utils/jettify_colors.dart';
import 'package:jetiffy/widgets/jetify_button.dart';

import 'package:jetiffy/widgets/jettify_app_bar.dart';

class PreviewScreen extends StatefulWidget {
  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  SizedBox _spacer = SizedBox(height: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(children: [
              SizedBox(height: 40),
              jettifyAppBar('Preview receivers\' info', context),
              SizedBox(height: 40),
              Container(
                child: Column(
                  children: [
                    JetiffyAccordion(),
                    _spacer,
                    JetiffyAccordion(),
                    _spacer,
                    JetiffyAccordion(),
                    SizedBox(height: 70),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(JetiffyColor.secondary()),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15),
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 40),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/order-confirmation');
                            },
                            child: Container(
                                width: 300,
                                child: jetiffyButton('Place Order')),
                          ),
                        ]),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
