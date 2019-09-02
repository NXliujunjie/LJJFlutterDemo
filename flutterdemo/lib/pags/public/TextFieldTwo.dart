import 'package:flutter/material.dart';

class TextFieldTwo extends StatefulWidget {
  TextFieldTwo({Key key}) : super(key: key);
  _TextFieldTwoState createState() => _TextFieldTwoState();
}

class _TextFieldTwoState extends State<TextFieldTwo> {
  var userName = new TextEditingController();
  @override
  void initState() {
    super.initState();
    userName.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: '用户名'),
              controller: this.userName,
              maxLines: 1,
              onChanged: (value){
                setState(() {
                  this.userName.text = value;
                });
              },
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: (){
                  print(this.userName.text);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

