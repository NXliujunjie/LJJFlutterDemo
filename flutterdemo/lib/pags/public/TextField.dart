import 'package:flutter/material.dart';

class TextFieldTool extends StatelessWidget {
  const TextFieldTool({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          // hintText: 'placholder',
          border: OutlineInputBorder(),
          labelText: '用户名',
          icon: Icon(Icons.text_fields)),
      //maxLength: 4,
      //obscureText: true,
      maxLines: 1,
    );
  }
}
