import 'package:flutter/material.dart';
import 'res/listData.dart';
import 'pags/typs/Taps.dart';

void main() => runApp(MyApp());

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Taps()
    );
  }
}


