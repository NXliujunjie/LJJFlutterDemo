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

  Widget _getListData(context, index) {
    return ListTile(
          title: Text(listData[index]['title']),
          subtitle: Text(listData[index]['author']),
          leading: Image.network(listData[index]['imageUrl']),
        );
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder:(context, index){
        return _getListData(context, index);
      },
    );
  }
}
