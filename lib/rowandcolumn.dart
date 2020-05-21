import 'package:flutter/material.dart';

class RowAndColumnItem extends StatelessWidget {
  var content;
  RowAndColumnItem(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(title: Text(content)),
      body: Column(
        children: [
          Wrap(children: [
            Text(content+"123123123"),
            Text(content),
            Text(content),
            Text(content)
          ], alignment: WrapAlignment.start),
          Wrap(children: [
            Text(content),
            Text(content),
            Text(content),
            Text(content)
          ], alignment: WrapAlignment.center),
          Wrap(children: [
            Text(content+"12312312321312"),
            Text(content),
            Text(content),
            Text(content)
          ], alignment: WrapAlignment.end),
          Wrap(children: [
            Text(content),
            Text(content),
            Text(content),
            Text(content)
          ], alignment: WrapAlignment.spaceAround),
          Wrap(children: [
            Text(content),
            Text(content),
            Text(content),
            Text(content)
          ], alignment: WrapAlignment.spaceBetween),
          Wrap(children: [
            Text(content),
            Text(content),
            Text(content),
            Text(content)
          ], alignment: WrapAlignment.spaceEvenly),
        ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
