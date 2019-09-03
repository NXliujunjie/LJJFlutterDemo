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
        ),
        RaisedButton(
          child: Text("跳转Radios界面"),
          onPressed: () {
            Navigator.pushNamed(context, '/Radius');
          },
        ),
        RaisedButton(
          child: Text("跳转RadiosList界面"),
          onPressed: () {
            Navigator.pushNamed(context, '/RadiuList');
          },
        ),
        RaisedButton(
          child: Text("跳转Input界面"),
          onPressed: () {
            Navigator.pushNamed(context, '/input');
          },
        ),
        RaisedButton(
          child: Text("跳转系统时间"),
          onPressed: () {
            Navigator.pushNamed(context, '/date');
          },
        ),
        RaisedButton(
          child: Text("跳转第三方时间界面"),
          onPressed: () {
            Navigator.pushNamed(context, '/dateTwo');
          },
        ),
      ],
    );
  }
}
