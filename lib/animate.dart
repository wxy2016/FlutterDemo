import 'package:flutter/material.dart';

class AnimateItem extends StatelessWidget {
  var content;
  AnimateItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("动画结构")),
          FlatButton(onPressed: null, child: Text("自定义路由过度动画")),
          FlatButton(onPressed: null, child: Text("Hero动画")),
          FlatButton(onPressed: null, child: Text("交织动画")),
          FlatButton(onPressed: null, child: Text("通用动画切换")),
          FlatButton(onPressed: null, child: Text("动画过度")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
