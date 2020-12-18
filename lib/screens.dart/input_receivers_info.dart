import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jetiffy/components/receivers_info_component.dart';
import 'package:jetiffy/utils/jettify_colors.dart';

class InputReceiversInfoScreen extends StatefulWidget {
  @override
  _InputReceiversInfoScreenState createState() =>
      _InputReceiversInfoScreenState();
}

class _InputReceiversInfoScreenState extends State<InputReceiversInfoScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                SizedBox(height: 20),
                Row(children: [
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () {},
                    color: Colors.black.withOpacity(0.55),
                    iconSize: 30,
                  ),
                  SizedBox(width: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Input receivers\' info',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 23)),
                        Container(),
                      ]),
                ]),
                SizedBox(height: 20),
              Container(
                height: 600,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    receiversInfoComponent(),
                    SizedBox(height: 90),
                    receiversInfoComponent(),
                    SizedBox(height: 70),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text('Add another receiver',
                          style: TextStyle(
                              color: Color(JetiffyColor.secondary()),
                              fontWeight: FontWeight.bold))
                    ]),
                    SizedBox(height: 30),
                    Container(
                      color: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 17),
                        child: Center(
                      child: Text(
                        'Preview',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ))
                  ]),
                ),
              ),
              ],
            )),
      ),
    );
  }
}
