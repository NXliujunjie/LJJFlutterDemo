import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../public/CustomDialog.dart';

class DiaLogVc extends StatefulWidget {
  DiaLogVc({Key key}) : super(key: key);

  _DiaLogVcState createState() => _DiaLogVcState();
}

class _DiaLogVcState extends State<DiaLogVc> {
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('_alertDialog'),
            content: Text('_alertDialogMessage'),
            actions: <Widget>[
              RaisedButton(
                child: Text('确定'),
                onPressed: () {
                  Navigator.pop(context, 'OK');
                },
              ),
              RaisedButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.pop(context, 'NO');
                },
              ),
            ],
          );
        });
    print(result);
  }

  void _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('_simpleDialog'),
            children: <Widget>[
              Divider(),
              SimpleDialogOption(
                child: Text('A'),
                onPressed: () {
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('B'),
                onPressed: () {
                  Navigator.pop(context, 'B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('C'),
                onPressed: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          );
        });
    print(result);
  }

  void _showModalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 250,
            child: Column(children: <Widget>[
              Divider(),
              ListTile(
                title: Text('分享 A'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text('分享 A'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text('分享 A'),
                onTap: () {},
              ),
              Divider(),
            ]),
          );
        });
    print(result);
  }

  void _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog')),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          RaisedButton(
            child: Text('AlertDialog'),
            onPressed: this._alertDialog,
          ),
        ]),
        SizedBox(height: 30),
        Row(children: <Widget>[
          RaisedButton(
            child: Text('SimpleDialog'),
            onPressed: this._simpleDialog,
          ),
        ]),
        SizedBox(height: 30),
        Row(children: <Widget>[
          RaisedButton(
            child: Text('ShowModalBottomSheet'),
            onPressed: this._showModalBottomSheet,
          ),
        ]),
        SizedBox(height: 30),
        Row(children: <Widget>[
          RaisedButton(
            child: Text('Fluttertoast'),
            onPressed: _toast,
          ),
        ]),
        SizedBox(height: 30),
        Row(children: <Widget>[
          RaisedButton(
            child: Text('ShowModalBottomSheet'),
            onPressed: this._showModalBottomSheet,
          ),
        ]),
        SizedBox(height: 30),
        Row(children: <Widget>[
          RaisedButton(
            child: Text('自定义Dialog'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                    title: "自定义Dialog",
                    content: 'https://github.com/NXliujunjie/LJJFlutterExample',
                  );
                },
              );
            },
          ),
        ]),
      ]),
    );
  }
}
