import 'package:flutter/material.dart';
import 'package:jetiffy/utils/jettify_colors.dart';

class JetiffyAccordion extends StatefulWidget {
  @override
  _JetiffyAccordionState createState() => _JetiffyAccordionState();
}

class _JetiffyAccordionState extends State<JetiffyAccordion> {
  SizedBox _spacer = SizedBox(height: 10);
  bool _expand = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
              title: Text('Oluwajane Ademidoe'),
              trailing: Icon(_expand ? Icons.keyboard_arrow_down: Icons.play_arrow,
                  color: Color(JetiffyColor.secondary())),
              onTap: () {
                setState(() {
                  _expand = !_expand;
                });
              }),
        ),
        _expand
            ? Card(
                child: Container(
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: Color(JetiffyColor.primary()),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Receiver\'s Address',
                              style: TextStyle(fontWeight: FontWeight.w700)),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Color(JetiffyColor.danger()),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {},
                                iconSize: 16,
                                color: Colors.white),
                          )
                        ]),
                    _spacer,
                    Row(children: [
                      Text('House address',
                          style: TextStyle(
                              color: Color(JetiffyColor.fadedText()),
                              fontSize: 12)),
                    ]),
                    _spacer,
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          '7 Prince Ibrahim Odofin Street Idado Estate Igbo-Efan',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                    _spacer,
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Item Name',
                          style: TextStyle(
                            color: Color(JetiffyColor.fadedText()),
                            fontSize: 12,
                          ),
                        )),
                    _spacer,
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Kettle',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                  ]),
                ),
              )
            : Container(),
      ],
    );
  }
}
