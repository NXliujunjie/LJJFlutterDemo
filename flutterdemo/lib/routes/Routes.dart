
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
