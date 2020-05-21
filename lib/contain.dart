import 'package:flutter/material.dart';

class ContainItem extends StatelessWidget {
  var content;
  ContainItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("尺寸限制类容器")),
          FlatButton(onPressed: null, child: Text("装饰容器")),
          FlatButton(onPressed: null, child: Text("变换")),
          FlatButton(onPressed: null, child: Text("container容器")),
          FlatButton(onPressed: null, child: Text("Scaffold、tabbar、底部导航")),
          FlatButton(onPressed: null, child: Text("剪裁")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
