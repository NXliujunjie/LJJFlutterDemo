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

      children: <Widget>[
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
          leading: Icon(
            Icons.settings
          ),
        ),
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
          leading: Icon(
            Icons.home,
            color: Colors.yellow,
            size: 20,
          ),
        ),
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
          trailing: Icon(Icons.pages),
        ),
        ListTile(
          title: Text("哈哈"),
          subtitle: Text("腾讯社收到了"),
          leading: Image.network('https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.png'),
        ),
      ],
    );
  }
}


