import 'package:flutter/material.dart';

class InputVc extends StatefulWidget {
  InputVc({Key key}) : super(key: key);

  _InputVcState createState() => _InputVcState();
}

class _InputVcState extends State<InputVc> {
  String userName;
  int sex;
  List hobby = [
    {'checket': true, 'title': '吃饭'},
    {'checket': true, 'title': '睡觉'},
    {'checket': true, 'title': '码代码'},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]['title']+''),
          Checkbox(
            value: this.hobby[i]['checket'],
            onChanged: (v) {
              setState(() {
                this.hobby[i]['checket'] = v;
              });
            },
          )
        ],
      ));
    }
    return tempList;
  }

  void _sexChanged(v) {
    setState(() {
      this.sex = v;
    });
  }

  void _buttonPress() {
    print(this.userName);
    print(this.sex);
    print(this.hobby);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('各种状态组件'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: '输入用户信息'),
                onChanged: (v) {
                  this.userName = v;
                },
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Text('男'),
                  Radio(
                    value: 1,
                    onChanged: this._sexChanged,
                    groupValue: this.sex,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('女'),
                  Radio(
                    value: 2,
                    onChanged: this._sexChanged,
                    groupValue: this.sex,
                  ),
                ],
              ),
              //爱好
              SizedBox(height: 40),
              Column(
                children: _getHobby(),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text('获取信息'),
                  onPressed: this._buttonPress,
                ),
              )
            ],
          )),
    );
  }
}
