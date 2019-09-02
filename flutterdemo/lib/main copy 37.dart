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
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 20.0,
        runSpacing: 10.0,
        runAlignment: WrapAlignment.center,
        children: <Widget>[
          Mybutton('我是按钮1'),
          Mybutton('我是按钮2'),
          Mybutton('我是按钮3'),
          Mybutton('我是按钮4'),
          Mybutton('我是按钮5'),
          Mybutton('我是按钮6'),
          Mybutton('我是按钮7'),
          Mybutton('我是按钮8')
        ],
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  final String text;
  const Mybutton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
