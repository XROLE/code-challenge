import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jetiffy/components/receivers_info_component.dart';
import 'package:jetiffy/utils/jettify_colors.dart';
import 'package:jetiffy/widgets/jetify_button.dart';
import 'package:jetiffy/widgets/jettify_app_bar.dart';

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
                jettifyAppBar('Input receivers\' info', context),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/preview');
                        },
                        child: jetiffyButton('Preview'),
                      )
                    ]),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
