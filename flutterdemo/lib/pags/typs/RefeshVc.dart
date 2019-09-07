import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class RefreshVc extends StatefulWidget {
  RefreshVc({Key key}) : super(key: key);

  _RefreshVcState createState() => _RefreshVcState();
}

class _RefreshVcState extends State<RefreshVc> {
  List list = [];
  ScrollController _scrollController = new ScrollController();
  int page = 1;
  bool falg = true; //判断是否有数据

  @override
  void initState() {
    super.initState();
    this._getData();

    //监听滚动
    this._scrollController.addListener(() {
      if (this.falg == true) {
        if (this._scrollController.position.pixels ==
            this._scrollController.position.maxScrollExtent) {
          this.page++;
          this._getData();
        }
      }
    });
  }

  //下拉刷新
  Future<void> _onRefresh() async {
    await Future.delayed(Duration(microseconds: 3000), () {
      setState(() {
        this.page = 1;
      });
      _getData();
    });
  }

  //上拉加载
  void _getData() async {
    if (this.falg == true) {
      Response response = await Dio().get(
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this.page}");
      Map map = json.decode(response.data);
      var result = map['result'];
      setState(() {
        this.page != 1 ? this.list.addAll(result) : this.list = result;
      });
      setState(() {
        if (result.length < 20) {
          this.falg = false;
        }
      });
    }
  }

  //加载中的动画
  Widget _getMoreWidget() {
    if (this.falg) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('加载更多', style: TextStyle(fontSize: 16.0)),
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Text('没有更多'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('下拉刷新'),
      ),
      body: this.list.length > 0
          ? RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: this.list.length,
                itemBuilder: (context, index) {
                  if (index == this.list.length - 1) {
                    //表示拉到底部
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(this.list[index]['title']),
                          onTap: () {
                            Navigator.pushNamed(context, '/NewsContent',
                                arguments: {
                                  'aid': this.list[index]['aid'],
                                });
                          },
                        ),
                        Divider(),
                        _getMoreWidget(),
                      ],
                    );
                  } else {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(this.list[index]['title']),
                          onTap: () {
                            Navigator.pushNamed(context, '/NewsContent',
                                arguments: {
                                  'aid': this.list[index]['aid'],
                                });
                          },
                        ),
                        Divider(),
                      ],
                    );
                  }
                },
              ),
            )
          : Text('加载中...'),
    );
  }
}
