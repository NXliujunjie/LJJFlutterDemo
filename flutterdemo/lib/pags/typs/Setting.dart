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
    return Column(
      children: <Widget>[
        RaisedButton(
          //Swiper
          child: Text("跳转textField+box"),
          onPressed: () {
            Navigator.pushNamed(context, '/TextFieldVc');
          },
        ),
        RaisedButton(
          //Swiper
          child: Text("跳转Network"),
          onPressed: () {
            Navigator.pushNamed(context, '/Network');
          },
        ),
        RaisedButton(
          //Swiper
          child: Text("跳转Dio"),
          onPressed: () {
            Navigator.pushNamed(context, '/DioNetwork');
          },
        ),
        RaisedButton(
          child: Text("跳转下拉刷新"),
          onPressed: () {
            Navigator.pushNamed(context, '/RefeshVc');
          },
        ),
      ],
    );
  }
}
