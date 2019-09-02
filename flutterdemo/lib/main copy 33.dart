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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三'),
              ),
              ListTile(
                title: Text('电话'),
              ),
              ListTile(
                title: Text('地址'),
              ),
              ListTile(
                title: Text('性别'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三'),
              ),
              ListTile(
                title: Text('电话'),
              ),
              ListTile(
                title: Text('地址'),
              ),
              ListTile(
                title: Text('性别'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三'),
              ),
              ListTile(
                title: Text('电话'),
              ),
              ListTile(
                title: Text('地址'),
              ),
              ListTile(
                title: Text('性别'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
