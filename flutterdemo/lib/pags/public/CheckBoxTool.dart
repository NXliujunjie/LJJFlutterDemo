import 'package:flutter/material.dart';

class CheckBoxTool extends StatefulWidget {
  CheckBoxTool({Key key}) : super(key: key);
  _CheckBoxToolState createState() => _CheckBoxToolState();
}

class _CheckBoxToolState extends State<CheckBoxTool> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (bool value) {
                  setState(() {
                    this.flag = !this.flag;
                  });
                },
                activeColor: Colors.green,
              ),
            ],
          ),
          Row(
            children: <Widget>[Text(this.flag == true ? '选中' : '未选中')],
          ),
          CheckboxListTile(
            value: this.flag,
            onChanged: (bool value) {
              setState(() {
                this.flag = !this.flag;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是一级标题'),
            secondary: Icon(Icons.home),
          )
        ],
      ),
    );
  }
}
