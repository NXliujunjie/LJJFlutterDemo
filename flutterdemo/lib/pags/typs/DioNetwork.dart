import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Dionetwork extends StatefulWidget {
  Dionetwork({Key key}) : super(key: key);

  _DionetworkState createState() => _DionetworkState();
}

class _DionetworkState extends State<Dionetwork> {
  List list = [];

  @override
  void initState() {
    super.initState();
    this._getData();
    //this._postData();
  }

  void _getData() async {
    try {
      Response response = await Dio().get(
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1");
      Map map = json.decode(response.data);
      setState(() {
        this.list = map['result'];
      });
    } catch (e) {
      print(e);
    }
  }

  // void _postData() async {
  //   //http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1
  //   var url = 'http://www.phonegap100.com/appapi.php';
  //   Map map = {
  //     'a':'getPortalList',
  //     'catid':'20',
  //     'page':'1'
  //   };
  //   try {
  //     Response response = await Dio().post(url, data: map);
  //     print(response);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio'),
      ),
      body: this.list.length > 0
          ? ListView.builder(
              itemCount: this.list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(this.list[index]['title']),
                );
              },
            )
          : Text('加载中'),
    );
  }
}
