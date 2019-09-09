import 'package:flutter/material.dart';
import 'routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:amap_location/amap_location.dart';

  void main(){     
      AMapLocationClient.setApiKey("6e923c04ab9831154c6659615a52bd59");
     runApp(new MyApp());
   }

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',//初始化加载的路由
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US')
      ],
    );
  }
}


