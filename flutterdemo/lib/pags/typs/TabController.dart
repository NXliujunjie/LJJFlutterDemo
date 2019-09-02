import 'dart:io';

import 'package:flutter/material.dart';


class TabbarController extends StatefulWidget {
  TabbarController({Key key}) : super(key: key);

  _TabbarControllerState createState() => _TabbarControllerState();
}

class _TabbarControllerState extends State<TabbarController>  with SingleTickerProviderStateMixin{
  
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      _tabController = TabController(
        vsync: this,
        length: 2
      );
  }

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
       // title: Text('tabbar'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: '热销',),
            Tab(text: '推荐',)
          ],
        ),
      );
    return Scaffold(
      appBar: appBar2,
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text('热销')
          ),
           Center(
            child: Text('推荐')
          ),
        ],
      ),
    );
  }
}