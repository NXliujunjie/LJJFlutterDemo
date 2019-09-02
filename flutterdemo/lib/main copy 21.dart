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
    return Container(
        child: Column(
          children: <Widget>[
            Image.network(listData[index]['imageUrl']),
            SizedBox(height: 18),
            Text(
              listData[index]['title'],
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
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0
      ),
      itemCount: 20,
      itemBuilder: this._getListData,
    );
  }
}