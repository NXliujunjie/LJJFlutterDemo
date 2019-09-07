import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class NewsContent extends StatefulWidget {
  final Map arguments;
  NewsContent({Key key, this.arguments}) : super(key: key);

  _NewsContentState createState() => _NewsContentState(this.arguments);
}

class _NewsContentState extends State<NewsContent> {
  Map arguments;
  _NewsContentState(this.arguments);
  List _list = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    var apiUrl =
        'http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${this.arguments['aid']}';
    var response = await Dio().get(apiUrl);

    setState(() {
      this._list = json.decode(response.data)['result'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('新闻详情'),
        ),
        body: ListView(
          children: <Widget>[
            Text(this._list.length > 0 ? this._list[0]['title'] : ''),
            Html(
              data: """
                    ${this._list.length > 0 ? this._list[0]['content'] : ''}
                    """,
              padding: EdgeInsets.all(8.0),
              backgroundColor: Colors.white70,
              defaultTextStyle: TextStyle(fontFamily: 'serif'),
              linkStyle: const TextStyle(
                color: Colors.redAccent,
              ),
              onLinkTap: (url) {
              },
            )
          ],
        ),
      ),
    );
  }
}
