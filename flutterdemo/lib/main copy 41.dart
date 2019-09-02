import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Taps()
    );
  }
}

class Taps extends StatefulWidget {
  Taps({Key key}) : super(key: key);
  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {

  int _currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Text('body'),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currenIndex,
          onTap: (int index){
            setState(() {
              this._currenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('搜索')),
            BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('消息')),
          ],
        ),
      ),
    );
  }
}
