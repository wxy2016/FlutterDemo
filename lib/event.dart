import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {
  var content;
  EventItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("原始指针事件处理")),
          FlatButton(onPressed: null, child: Text("手势识别")),
          FlatButton(onPressed: null, child: Text("全局事件总线")),
          FlatButton(onPressed: null, child: Text("通知")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
