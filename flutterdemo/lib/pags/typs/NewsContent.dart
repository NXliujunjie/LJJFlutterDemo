import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class NewsContent extends StatefulWidget {
  final Map arguments;
  NewsContent({Key key, this.arguments}) : super(key: key);

  _NewsContentState createState() => _NewsContentState(this.arguments);
}

class _NewsContentState extends State<NewsContent> {
  Map arguments;
  _NewsContentState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('新闻详情111'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: InAppWebView(
                initialUrl: 'http://www.phonegap100.com/newscontent.php?aid=198',
              ),
            )
          ],
        ),
      ),
    );
  }
}
