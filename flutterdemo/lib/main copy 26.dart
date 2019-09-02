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
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text('Flutter'),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    height: 180,
                    child: Image.network(
                        'https://www.itying.com/images/flutter/2.png',
                        fit: BoxFit.fill))),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    //Image.network('https://www.itying.com/images/flutter/3.png',fit:BoxFit.fill)
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 85,
                          child: Image.network(
                              'https://www.itying.com/images/flutter/3.png',
                              fit: BoxFit.fill),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 85,
                          child: Image.network(
                              'https://www.itying.com/images/flutter/4.png',
                              fit: BoxFit.fill),
                        )
                      ],
                    ))),
          ],
        )
      ],
    );
  }
}
