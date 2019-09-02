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
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        Text('hah'),
        Text('hah'),
        Text('HHAA'),
        Text('hah'),
        Text('hah'),
        Text('HHAA'),
        Text('hah'),
        Text('hah'),
        Text('HHAA'),
      ],
    );
  }
}
