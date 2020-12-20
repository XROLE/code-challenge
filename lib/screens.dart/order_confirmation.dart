import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jetiffy/utils/jettify_colors.dart';
import 'package:jetiffy/widgets/jetify_button.dart';
import 'package:jetiffy/widgets/jettify_app_bar.dart';

class OrderConfirmationScreen extends StatefulWidget {
  @override
  _OrderConfirmationScreenState createState() =>
      _OrderConfirmationScreenState();
}

class _OrderConfirmationScreenState extends State<OrderConfirmationScreen> {
  bool _isConfirmed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40),
            jettifyAppBar( _isConfirmed ? 'Order Confirmantion' : 'Awaiting Confirmantion', context),
            SizedBox(height: 80),
            Card(
              child: Container(
                height: 300,
                width: 500,
                child: Column(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(JetiffyColor.primary()),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: _isConfirmed
                    ? Icon(Icons.check, size: 50, color: Color(JetiffyColor.secondary()),)
                    : SpinKitRing(
                      color: Color(JetiffyColor.secondary()),
                      size: 50.0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 130,
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(JetiffyColor.primary()),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      _isConfirmed 
                      ?  Center(
                          child: Text(
                        'Your order has been accepted',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ))
                      : Center(
                          child: Text(
                        'Your order is currently being',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      )),
                     _isConfirmed
                     ? Center(
                          child: Text(
                        'and a driver is on the way',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ))
                      :   Center(
                          child: Text(
                        'processed',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      )),
                      SizedBox(height: 20),
                     _isConfirmed
                     ? Text(
                        'you can now track your order',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(JetiffyColor.fadedText()),
                        ),
                      )
                      : Text(
                        'Just give us a little time',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(JetiffyColor.fadedText()),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 80),
           _isConfirmed
           ? GestureDetector(
              onTap: () {},
              child: jetiffyButton('Go Home'),
            )
            : Container(),
          ],
        ),
      ),
    );
  }
}
