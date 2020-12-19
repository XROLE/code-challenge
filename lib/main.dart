import 'package:flutter/material.dart';
import 'package:jetiffy/screens.dart/input_receivers_info.dart';
import 'package:jetiffy/screens.dart/order_confirmation.dart';
import 'package:jetiffy/screens.dart/preview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputReceiversInfoScreen(),
        '/preview': (context) => PreviewScreen(),
        '/order-confirmation': (context) => OrderConfirmationScreen(),
      }
    );
  }
}

