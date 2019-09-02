import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',//初始化加载的路由
      onGenerateRoute: onGenerateRoute
    );
  }
}


