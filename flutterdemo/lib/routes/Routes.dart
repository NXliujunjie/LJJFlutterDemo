
import 'package:flutter/material.dart';
import '../pags/typs/SearchVC.dart';
import '../pags/typs/Taps.dart';
import '../pags/typs/Pro.dart';
import '../pags/typs/Prosub.dart';
import '../pags/appbar.dart';
import '../pags/appbar02.dart';
import '../pags/typs/TabController.dart';
import '../pags/typs/User.dart';
import '../pags/typs/ButtonVc.dart';
import '../pags/typs/Radius.dart';
import '../pags/typs/RadiuList.dart';
import '../pags/typs/InPut.dart';
import '../pags/typs/Date.dart';
import '../pags/typs/DateTwo.dart';
import '../pags/typs/Swiper.dart';
import '../pags/typs/SwiperOne.dart';
import '../pags/typs/DiaLogVc.dart';
import '../pags/typs/Network.dart';
import '../pags/typs/TextFieldVc.dart';
import '../pags/typs/DioNetwork.dart';
import '../pags/typs/RefeshVc.dart';
import '../pags/typs/NewsContent.dart';
import '../pags/typs/GetPhoneInfo.dart';
/*
 * 配置路由
 */
final routes = {
  '/': (context,{arguments}) => Taps(),
  '/pro': (context) => Pro(),
  '/search' : (context, {arguments}) => SearchVC(arguments: arguments),
  '/prosub' : (context, {arguments}) => Prosub(arguments: arguments),
  '/appbar': (context) => appbardDemo(),
  '/appbar02': (context) => customeAppbar(),
  '/TabController': (context) => TabbarController(),
  '/User':(context) => UserPage(),
  '/ButtonVc':(context) => ButtonVv(),
  '/Radius':(context) => RadiusVc(),
  '/RadiuList':(context) => RadiuList(),
  '/input':(context) => InputVc(),
  '/date':(context) => DateOne(),
  '/dateTwo':(context) => DateTwo(),
  '/Swiper':(context) => SwiperVc(),
  '/SwiperOne':(context) => SwiperOneVc(),
  '/DiaLogVc':(context) => DiaLogVc(),
  '/Network':(context) => NetworkVc(),
  '/TextFieldVc':(context) => TextFieldVc(),
  '/DioNetwork':(context) => Dionetwork(),
  '/RefeshVc':(context) => RefreshVc(),
  '/NewsContent':(context,{arguments}) => NewsContent(arguments:arguments),
  '/GetPhoneInfo':(context) => GetPhoneInfo(),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
