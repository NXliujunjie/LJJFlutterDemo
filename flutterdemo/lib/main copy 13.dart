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

  //自定义方法
  List<Widget> _getData() {
    return [
      ListTile(
        title: Text('标题一')
      ),
       ListTile(
        title: Text('标题一')
      ),
       ListTile(
        title: Text('标题一')
      ),
       ListTile(
        title: Text('标题一')
      ),
       ListTile(
        title: Text('标题一')
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData() ,
    );
  }
}


