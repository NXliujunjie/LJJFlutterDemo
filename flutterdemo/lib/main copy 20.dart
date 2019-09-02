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
    var tempList = listData.map((value){
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 18),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(233, 233, 223, 1),
            width: 1
          )
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 8.0,//水平距离
      mainAxisSpacing: 8.0,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      children: _getListData(),
    );
  }
}