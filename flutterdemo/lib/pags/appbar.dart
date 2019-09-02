import 'package:flutter/material.dart';

class appbardDemo extends StatelessWidget {
  const appbardDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbardDemo'),
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.memory),
          onPressed: (){
            print(123);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search');
            },
          )
        ],
      ),
      body: Text('hello'),
    );
  }
}
