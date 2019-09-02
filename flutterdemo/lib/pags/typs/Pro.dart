import 'package:flutter/material.dart';

class Pro extends StatefulWidget {
  Pro({Key key}) : super(key: key);

  _ProState createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pro'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("跳转至ProSub"),
              onPressed: () {
                Navigator.pushNamed(context, '/prosub', arguments: {
                  'pid': 1234567890,
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
