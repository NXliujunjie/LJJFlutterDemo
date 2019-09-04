import 'package:flutter/material.dart';
import '../public/TextField.dart';
import '../public/TextFieldTwo.dart';
import '../public/CheckBoxTool.dart';

class TextFieldVc extends StatefulWidget {
  TextFieldVc({Key key}) : super(key: key);

  _TextFieldVcState createState() => _TextFieldVcState();
}

class _TextFieldVcState extends State<TextFieldVc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转textField+box'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[TextFieldTool(), TextFieldTwo(), CheckBoxTool()],
          ),
        ),
      ),
    );
  }
}
