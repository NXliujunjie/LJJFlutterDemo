import 'package:flutter/material.dart';
import '../public/Drawer.dart';
import 'Catecory.dart';
import 'Setting.dart';
import 'Home.dart';


class Taps extends StatefulWidget {
  Taps({Key key}) : super(key: key);
  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  int _currenIndex = 0;

  List _pageList = [HomeVc(), Setting(), Category()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        floatingActionButton: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _currenIndex = 1;
              });
            },
            backgroundColor: this._currenIndex != 1 ? Colors.grey : Colors.green,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pageList[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currenIndex,
          onTap: (int index) {
            setState(() {
              this._currenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('搜索')),
            BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('分类')),
          ],
        ),
        drawer: DrawerTool(),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      ),
    );
  }
}
