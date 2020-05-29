import 'package:flutter/material.dart';
import 'base/status.dart';

class BaseItem extends StatelessWidget {
  var content;
  BaseItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(title: Text(content)),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            //纵轴的长度则取决于他们最大子元素的长度，可以使用父元素限制宽度
            children: [
              FlatButton(
                onPressed: () => {Navigator.pushNamed(context, "status")},
                child: Text("状态管理"),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => {},
                child: Text("文本字体样式"),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => {},
                child: Text("按钮"),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => {},
                child: Text("图片和icon"),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => {},
                child: Text("单选框和复选框"),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => {},
                child: Text("输入框和表单"),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () => {},
                child: Text("进度指示器"),
                color: Colors.orange,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ));
  }
}
