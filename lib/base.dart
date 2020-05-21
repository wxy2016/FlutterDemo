import 'package:flutter/material.dart';

class BaseItem extends StatelessWidget {
  var content;
  BaseItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(title: Text(content)),
      body: Column(
        children: [
          FlatButton(
            onPressed: ()=>{},
            child: Text("状态管理"),
            color: Colors.orange,
          ),
          FlatButton(
            onPressed: ()=>{},
            child: Text("文本字体样式"),
            color: Colors.orange,
          ),
          FlatButton(
            onPressed: ()=>{},
            child: Text("按钮"),
            color: Colors.orange,
          ),
          FlatButton(
            onPressed: ()=>{},
            child: Text("图片和icon"),
            highlightColor: Colors.orange,
          ),
          FlatButton(
            onPressed: ()=>{},
            child: Text("单选框和复选框"),
            color: Colors.orange,
          ),
          FlatButton(
            onPressed: ()=>{},
            child: Text("输入框和表单"),
            color: Colors.orange,
          ),
          FlatButton(
            onPressed: ()=>{},
            child: Text("进度指示器"),
            color: Colors.orange,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    );
  }
}
