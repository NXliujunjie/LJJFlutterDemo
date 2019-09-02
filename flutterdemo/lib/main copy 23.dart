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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        ),
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        ),
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        ),
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        ),
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        ),
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        ),
        IconContainer(
          Icons.search,
          color: Colors.grey,
          size: 40,
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.red,
        ),
      ),
    );
  }
}
