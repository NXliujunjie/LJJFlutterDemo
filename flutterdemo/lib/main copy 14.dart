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

  //自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((value){
        return ListTile(
          title: Text(value['title']),
          leading: Image.network(value['imageUrl']),
          subtitle: Text(value['author']),
        );
      }  
    );
    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData() ,
    );
  }
}
