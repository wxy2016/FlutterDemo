import 'package:flutter/material.dart';
import 'layout.dart';

class Item extends StatelessWidget {
  var title;
  var itemName;
  Item(this.title, this.itemName);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(//使用Center Widget可以让宽度尽可能大的占用空间
      child: FlatButton(
        //如果onPressed:null。则颜色为disable的颜色。
        onPressed: () {
          Navigator.pushNamed(context, itemName, arguments: {title});
        },
        color: Colors.orange,
        shape: BeveledRectangleBorder(
            side: BorderSide(
                width: 2, color: Colors.green, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20)),

        child: Text(
          title,
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
