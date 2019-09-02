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
      child: Container(
        height: 400,
        width: 300,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Icon(Icons.send, size: 40, color: Colors.white),
              left: 20,
            ),
            Positioned(
              child: Icon(Icons.send, size: 40, color: Colors.white),
              left: 60,
            ),
            Positioned(
              child: Icon(Icons.send, size: 40, color: Colors.white),
              left: 90,
            )
          ],
        ),
      ),
    );
  }
}
