import 'package:flutter/material.dart';

class LayoutItem extends StatelessWidget {
  var content;
  LayoutItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("线性布局")),
          FlatButton(onPressed: null, child: Text("弹性布局")),
          FlatButton(onPressed: null, child: Text("流式布局")),
          FlatButton(onPressed: null, child: Text("层叠布局")),
          FlatButton(onPressed: null, child: Text("对齐与相对定位")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
