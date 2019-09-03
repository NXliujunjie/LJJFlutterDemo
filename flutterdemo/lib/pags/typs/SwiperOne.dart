import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperOneVc extends StatefulWidget {
  SwiperOneVc({Key key}) : super(key: key);

  _SwiperOneVcState createState() => _SwiperOneVcState();
}

class _SwiperOneVcState extends State<SwiperOneVc> {
  List<Map> imgList = [
    {'url': 'https://www.itying.com/images/flutter/3.png'},
    {'url': 'https://www.itying.com/images/flutter/4.png'},
    {'url': 'https://www.itying.com/images/flutter/5.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('轮播图')),
        body: Column(children: <Widget>[
          Container(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(imgList[index]['url'], 
                  fit: BoxFit.fill);
                },
                itemCount: this.imgList.length,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                loop: true,
                autoplay: true,
              )),
              height: 270),
        ]));
  }
}
