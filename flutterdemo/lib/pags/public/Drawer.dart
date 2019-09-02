import 'package:flutter/material.dart';

class DrawerTool extends StatelessWidget {
  const DrawerTool({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: UserAccountsDrawerHeader(
                accountName: Text('flutter'),
                accountEmail: Text('768787417@qq.cim'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.itying.com/images/flutter/4.png'),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.itying.com/images/flutter/3.png'),
                      fit: BoxFit.cover),
                ),
                otherAccountsPictures: <Widget>[
                  Image.network('https://www.itying.com/images/fluttRer/1.png')
                ],
              ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.home),
            ),
            title: Text('我的空间'),
            onTap: () {
              Navigator.of(context).pop(); //隐藏侧边栏
              Navigator.pushNamed(context, '/User');
            },
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
    );
  }
}
