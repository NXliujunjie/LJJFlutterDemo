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

  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 28; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          child: Text(
            '这是第$i条数据',
            style:TextStyle(color: Colors.yellow, fontSize: 20)
          ),
          color: Colors.blue,
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: 0.7,
      children: _getListData(),
    );
  }
}