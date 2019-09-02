import 'package:flutter/material.dart';
import 'Catecory.dart';
import 'Setting.dart';
import 'Home.dart';

class Taps extends StatefulWidget {
  Taps({Key key}) : super(key: key);
  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {

  int _currenIndex = 0;

List _pageList = [
  HomeVc(),
  Setting(),
  Category()
];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currenIndex,
          onTap: (int index){
            setState(() {
              this._currenIndex 
              = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('搜索')),
            BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('分类')),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: DrawerHeader(
                      child: Text('我是DrawerHeader'),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://www.itying.com/images/flutter/3.png'),
                          fit: BoxFit.cover
                          ),
                      ),
                    ),
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('我的空间'),
              ),
              Divider(),
               ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.search),
                ),
                title: Text('搜索'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('设置'),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      ),
    );
  }
}