import 'package:flutter/material.dart';

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

      padding: EdgeInsets.all(10),

      children: <Widget>[
        ListTile(
          title: Text(
            "哈哈",
            style: TextStyle(
              fontSize: 20
            ),
          ),
          subtitle: Text("腾讯社收到了"),
        ),
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
        ),
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
        ),
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
        ),
      ],
    );
  }
}


