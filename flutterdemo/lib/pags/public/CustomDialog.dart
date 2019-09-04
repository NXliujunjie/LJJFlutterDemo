import 'package:flutter/material.dart';
import 'dart:async';

class CustomDialog extends Dialog {
  String title;
  String content;
  CustomDialog({this.title, this.content});

  _showTime(context){
    Timer.periodic(Duration(milliseconds:3000), (t){
        Navigator.pop(context);
        t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTime(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.green,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    this.content,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
