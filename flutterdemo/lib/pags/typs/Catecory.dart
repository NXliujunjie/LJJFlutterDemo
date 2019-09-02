import 'package:flutter/material.dart';
import 'FormVc.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    labelColor:Colors.red,
                    tabs: <Widget>[
                      Tab(text: '热销'),
                      Tab(text: '推荐')
                    ],
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(title: Text('第一个')),
                  ListTile(title: Text('第二个')),
                  ListTile(title: Text('第三个')),
                  ListTile(title: Text('第四个')),
                ],
              ),
              Scaffold(
                body: Text('我是最新'),
              ),
            ],
          )),
    );
  }
}
