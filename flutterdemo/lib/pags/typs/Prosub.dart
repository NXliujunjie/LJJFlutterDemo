import 'package:flutter/material.dart';

class Prosub extends StatefulWidget {
  final Map arguments;
  Prosub({Key key, this.arguments}) : super(key: key);
  _ProsubState createState() => _ProsubState(arguments: this.arguments);
}

class _ProsubState extends State<Prosub> {
  Map arguments;
  _ProsubState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('prosub'),
      ),
      body: Text('pid ${arguments['pid']}'),
    );
  }
}