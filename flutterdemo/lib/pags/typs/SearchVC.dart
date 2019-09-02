import 'package:flutter/material.dart';

class SearchVC extends StatelessWidget {
  final arguments;
  SearchVC({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('搜索页面'),
        ),
        body: Text('内容区域: ${arguments['id']}'),
      ),
    );
  }
}
