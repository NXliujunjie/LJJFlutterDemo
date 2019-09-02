import 'package:flutter/material.dart';
import '../public/TextField.dart';
import '../public/TextFieldTwo.dart';
import '../public/CheckBoxTool.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
         padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextFieldTool(),
              TextFieldTwo(),
              CheckBoxTool()
            ],
          ),
       ),
    );
  }
}

