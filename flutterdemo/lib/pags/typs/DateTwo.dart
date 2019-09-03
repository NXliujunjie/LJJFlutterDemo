import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class DateTwo extends StatefulWidget {
  DateTwo({Key key}) : super(key: key);

  _DateTwoState createState() => _DateTwoState();
}

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';

class _DateTwoState extends State<DateTwo> {
  
  bool _showTitle = true;
  String _format = 'yyyy-MMMM-dd';
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;
  DateTime _dateTime = DateTime.now();

  void _showDataPicker() async {
     DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
        cancel: Text('custom cancel', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime:  _dateTime,
      dateFormat: _format,
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三方日期选择器'),
      ),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          InkWell(
            child: Row(children: <Widget>[
              Text(formatDate(
                          this._dateTime, [yyyy, '年', mm, '月', dd, '日'])),
              Icon(Icons.arrow_drop_down)
            ]),
            onTap: this._showDataPicker,
          )
        ], mainAxisAlignment: MainAxisAlignment.center)
      ], mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}
