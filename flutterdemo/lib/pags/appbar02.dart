import 'package:flutter/material.dart';

class customeAppbar extends StatelessWidget {
  const customeAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('appbardDemo'),
          backgroundColor: Colors.green,
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '最新'),
              Tab(text: '推荐'),
              Tab(text: '个人'),
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
            Scaffold(
              body: Text('我是推荐'),
            ),
            Scaffold(
              body: Text('我是个人'),
            ),
          ],
        ),
      ),
    );
  }
}
