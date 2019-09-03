import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateOne extends StatefulWidget {
  DateOne({Key key}) : super(key: key);

  _DateOneState createState() => _DateOneState();
}

class _DateOneState extends State<DateOne> {
  var _nowDate = new DateTime.now();
  var _nowTime = new TimeOfDay(hour: 12, minute: 20);
  void _showDataPicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100),
        locale: Locale('zh'));
    setState(() {
      result == null ? this._nowDate = _nowDate : this._nowDate = result;
    });
  }

  void _showTimePicker() async {
    var result = await showTimePicker(
        context: context, 
        initialTime: this._nowTime);
        if (result == null){
          return ;
        }
    setState(() {
      this._nowTime = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('系统时间')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text(formatDate(
                          this._nowDate, [yyyy, '年', hh, '月', dd, '日'])),
                      Icon(Icons.arrow_drop_down)
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  onTap: _showDataPicker,
                ),
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text('${this._nowTime.format(context)}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  onTap: _showTimePicker,
                )
              ],
            )
          ],
        ));
  }
}
