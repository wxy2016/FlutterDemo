import 'package:flutter/material.dart';

class FunctionItem extends StatelessWidget {
  var content;
  FunctionItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("导航返回拦截")),
          FlatButton(onPressed: null, child: Text("数据共享")),
          FlatButton(onPressed: null, child: Text("跨组件状态共享")),
          FlatButton(onPressed: null, child: Text("颜色和主题")),
          FlatButton(onPressed: null, child: Text("异步UI更新")),
          FlatButton(onPressed: null, child: Text("对话框")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
