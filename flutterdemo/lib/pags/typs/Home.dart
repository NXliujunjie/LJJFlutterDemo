import 'package:flutter/material.dart';

class HomeVc extends StatefulWidget {
  HomeVc({Key key}) : super(key: key);

  _HomeVcState createState() => _HomeVcState();
}

class _HomeVcState extends State<HomeVc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("跳转至搜索界面"),
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder:(context)=> SearchVC()
            //   ),
            // );
            //Navigator.pushNamed(context, '/search');
            Navigator.pushNamed(context, '/search', arguments: {'id': '我是传值'});
          },
        ),
        RaisedButton(
          child: Text("跳转至搜索Pro"),
          onPressed: () {
            Navigator.pushNamed(context, '/pro');
          },
        ),
        RaisedButton(
          child: Text("跳转至搜索appbarDemo"),
          onPressed: () {
            Navigator.pushNamed(context, '/appbar');
          },
        ),
        RaisedButton(
          child: Text("跳转至customeappbar"),
          onPressed: () {
            Navigator.pushNamed(context, '/appbar02');
          },
        ),
        RaisedButton(
          child: Text("跳转tABBARcONTROLLER"),
          onPressed: () {
            Navigator.pushNamed(context, '/TabController');
          },
        ),
        RaisedButton(
          child: Text("跳转按钮样式界面"),
          onPressed: () {
            Navigator.pushNamed(context, '/ButtonVc');
          },
        )
      ],
    );
  }
}
