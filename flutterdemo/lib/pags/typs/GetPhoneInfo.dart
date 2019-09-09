import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:amap_location/amap_location.dart';

class GetPhoneInfo extends StatefulWidget {
  GetPhoneInfo({Key key}) : super(key: key);

  _GetPhoneInfoState createState() => _GetPhoneInfoState();
}

class _GetPhoneInfoState extends State<GetPhoneInfo> {

  @override
  void initState() {
    this._getDevice();
  }

void _getDevice()async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  print('Running on ${iosInfo.utsname.machine}');  //
  print('Running as ${iosInfo.identifierForVendor}');  //

  //获取位置信息
  await AMapLocationClient.startup(new AMapLocationOption( desiredAccuracy:CLLocationAccuracy.kCLLocationAccuracyHundredMeters  ));
  var result = await AMapLocationClient.getLocation(true);
  print('位置${result.altitude}');
  // AMapLocationClient.onLocationUpate.listen((AMapLocation loc){
  //     if(!mounted)return;
  //     setState(() {
  //        print('位置${loc.altitude}');
  //     });
  //   });

    AMapLocationClient.startLocation();
}

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('获取设备信息'),
         ),
         body: Text('123'),
       ),
    );
  }
}