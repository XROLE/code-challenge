import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jetiffy/utils/jettify_colors.dart';
import 'package:jetiffy/widgets/jetiffy_address_card.dart';
import 'package:jetiffy/widgets/jettify_app_bar.dart';
import 'package:jetiffy/widgets/jettify_input_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 550,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                GoogleMap(
                  mapType: MapType.terrain,
                  initialCameraPosition: _kGooglePlex,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      jettifyAppBar('Enter Address', context, true),
                    ],
                  ),
                ),
                Positioned(
                    top: 480,
                    left: 0,
                    right: 0,
                    height: 300,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(40),
                            right: Radius.circular(40)),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(children: [
                          SizedBox(height: 35),
                          Container(
                            child: jetiffyInput('Where is your package at?'),
                          ),
                          SizedBox(height: 20),
                         jetiffyAddressCard('Lekki Phase 1'),
                         SizedBox(height: 15),
                         jetiffyAddressCard('Ikate'),
                         SizedBox(height: 15),
                         jetiffyAddressCard('83, Midwood Street'),
                        ]),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
