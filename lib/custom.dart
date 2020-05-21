import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  var content;
  CustomItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("组合现有组件")),
          FlatButton(onPressed: null, child: Text("turnBox")),
          FlatButton(onPressed: null, child: Text("自绘组件")),
          FlatButton(onPressed: null, child: Text("圆形渐变进度条")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
