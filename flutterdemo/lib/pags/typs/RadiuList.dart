import 'package:flutter/material.dart';

class RadiuList extends StatefulWidget {
  RadiuList({Key key}) : super(key: key);

  _RadiuListState createState() => _RadiuListState();
}

class _RadiuListState extends State<RadiuList> {
  int sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadiuList'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  RadioListTile(
                    value: 1,
                    title: Text('标题'),
                    subtitle: Text('副标题'),
                    groupValue: this.sex,
                    selected: this.sex == 1,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 2,
                    title: Text('标题'),
                    subtitle: Text('副标题'),
                    groupValue: this.sex,
                    secondary: Icon(Icons.home),
                    selected: this.sex == 2,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height:40 ,),
              Switch(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag = v;
                  });
                },
              )
            ],
          )),
    );
  }
}
