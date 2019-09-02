import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Center(
        child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.blue,
          ),
          Text(
            '我是文本',
            style: TextStyle(color: Colors.white),
            ),
        ],
      ),
    );
  }
}
