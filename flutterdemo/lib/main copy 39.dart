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
class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  List list = new List();
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         children: <Widget>[
           Column(
             children: this.list.map((value){
               return ListTile(
                 title: Text(value),
               );
             }).toList()
           ),
           SizedBox(height: 20),
           RaisedButton(
             child: Text('按钮'),
             onPressed: (){
               setState(() {
                 this.list.add('新增数据1');
               });
             },
           )
         ],
       )
    );
  }
}

