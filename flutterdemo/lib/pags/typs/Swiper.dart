import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperVc extends StatefulWidget {
  SwiperVc({Key key}) : super(key: key);

  _SwiperVcState createState() => _SwiperVcState();
}

class _SwiperVcState extends State<SwiperVc> {
  List<Map> imgList = [
    {'url':'https://www.itying.com/images/flutter/3.png'},
    {'url':'https://www.itying.com/images/flutter/4.png'},
    {'url':'https://www.itying.com/images/flutter/5.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('轮播图')),
        body: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              imgList[index]['url'],
              fit: BoxFit.fill,
            );
          },
          itemCount: this.imgList.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ));
  }
}
