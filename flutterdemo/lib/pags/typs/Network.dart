import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class NetworkVc extends StatefulWidget {
  NetworkVc({Key key}) : super(key: key);

  _NetworkVcState createState() => _NetworkVcState();
}

class _NetworkVcState extends State<NetworkVc> {
  List _list = [];
  @override
  void initState() {
    super.initState();
    this._getData();
  }

  void _getData() async {
    var url = 'http://a.itying.com/api/productlist';
    var result = await http.get(url);
    if (result.statusCode == 200) {
      setState(() {
        this._list = convert.json.decode(result.body)['result'];
      });
    } else {
      print('失败:${result.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: this._list.length <= 0
          ? Text('加载中')
          : Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListView.builder(
                itemCount: this._list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(this._list[index]['title']),
                  );
                },
              ),
            ),
    );
  }
}
