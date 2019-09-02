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
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
     child: Container(
       child: Image.network(
         "http://img3.imgtn.bdimg.com/it/u=1838281048,3807966177&fm=26&gp=0.jpg",
         alignment: Alignment.center,
         fit: BoxFit.cover ,
         ),
       width: 300.0,
       height: 300.0,
       decoration: BoxDecoration(
         color: Colors.grey
       ),
     ),
    );
  }
}
