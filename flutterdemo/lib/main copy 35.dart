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
    return ListView(
      children: listData.map(
        (value) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(value['imageUrl'], fit: BoxFit.cover),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      value['imageUrl'],
                    ),
                  ),
                  title: Text(value['title']),
                  subtitle:
                      Text(value['author'], overflow: TextOverflow.ellipsis),
                )
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
