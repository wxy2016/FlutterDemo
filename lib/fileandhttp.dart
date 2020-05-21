import 'package:flutter/material.dart';

class FileAndHttpItem extends StatelessWidget {
  var content;
  FileAndHttpItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: null, child: Text("文件操作")),
          FlatButton(onPressed: null, child: Text("HttpClient")),
          FlatButton(onPressed: null, child: Text("Dio package")),
          FlatButton(onPressed: null, child: Text("Http分块下载")),
          FlatButton(onPressed: null, child: Text("websocket")),
          FlatButton(onPressed: null, child: Text("socket api")),
          FlatButton(onPressed: null, child: Text("json转model")),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
