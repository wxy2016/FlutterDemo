import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  var content;
  PackageItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("开发package")),
          FlatButton(onPressed: null, child: Text("flutter插件")),
          FlatButton(onPressed: null, child: Text("android api")),
          FlatButton(onPressed: null, child: Text("ios api")),
          FlatButton(onPressed: null, child: Text("texture and platformview")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
