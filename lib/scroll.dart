import 'package:flutter/material.dart';

class ScrollItem extends StatelessWidget {
  var content;
  ScrollItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("SingleChildScrollView")),
          FlatButton(onPressed: null, child: Text("ListView")),
          FlatButton(onPressed: null, child: Text("GridView")),
          FlatButton(onPressed: null, child: Text("CustomScrollView")),
          FlatButton(onPressed: null, child: Text("滚动监听及控制")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
