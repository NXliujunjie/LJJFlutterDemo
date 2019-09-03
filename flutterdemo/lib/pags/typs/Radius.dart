import 'package:flutter/material.dart';

class RadiusVc extends StatefulWidget {
  RadiusVc({Key key}) : super(key: key);

  _RadiusVcState createState() => _RadiusVcState();
}

class _RadiusVcState extends State<RadiusVc> {
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  },
                ),
                SizedBox(width: 20,),
                Text('女'),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('${this.sex}'),
                Text(this.sex == 1?'男':'女')
              ],
            )
          ],
        ),
      ),
    );
  }
}
