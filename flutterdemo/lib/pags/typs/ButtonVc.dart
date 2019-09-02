import 'package:flutter/material.dart';

class ButtonVv extends StatelessWidget {
  const ButtonVv({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('button样式'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.home, color: Colors.grey,),
          backgroundColor: Colors.green,
          onPressed: (){

          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('普通按钮'),
                  onPressed: () {},
                  textColor: Colors.green,
                ),
                SizedBox(width: 10),
                RaisedButton(
                  child: Text('阴影按钮'),
                  elevation: 10,
                  onPressed: () {},
                  textColor: Colors.green,
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'),
                  onPressed: null,
                ),
              ],
            ),
            SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 200,
                  child: RaisedButton(
                    child: Text('设置按钮的宽高'),
                    onPressed: () {},
                    textColor: Colors.green,
                  ),
                )
              ],
            ),
            SizedBox(width: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 80,
                  child: RaisedButton(
                    child: Text('圆形按钮'),
                    onPressed: () {},
                    elevation: 20,
                    textColor: Colors.green,
                    shape: CircleBorder(side: BorderSide(color: Colors.green)),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.all(40),
                    child: RaisedButton(
                      child: Text('圆角自适应自适应按钮'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        print('自适应按钮');
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: FlatButton(
                    child: Text('扁平化按钮'),
                    onPressed: () {},
                    textColor: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: OutlineButton(
                    child: Text('边框按钮'),
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: OutlineButton(
                    child: Text('边框按钮'),
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.green,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: MyButton(text: '自定义组件',height: 60.0, pressed: (){
                    print('123');
                  },)
                ),
              ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: ButtonBar(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('登录'),
                        onPressed: null,
                      ),
                      RaisedButton(
                        child: Text('注册'),
                        onPressed: null,
                      ),
                        RaisedButton(
                        child: Text('修改'),
                        onPressed: null,
                      ),
                    ],
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  const MyButton({this.text='', this.pressed = null, this.width=80.0, this.height= 30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}