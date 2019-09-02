import 'dart:ffi';

import 'package:flutter/material.dart';

class FormVc extends StatelessWidget {
  String title;
  FormVc({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单"),
          ),
          ListTile(
            title: Text("我是表单"),
          ),
          ListTile(
            title: Text("我是表单"),
          ),
          ListTile(
            title: Text("我是表单"),
          ),
          ListTile(
            title: Text("我是表单"),
          ),
        ],
      ),
    );
  }
}
