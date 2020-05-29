import 'dart:math';

import 'package:flutter/material.dart';
import 'base.dart';
import 'layout.dart';
import 'rowandcolumn.dart';
import 'item.dart';
import 'contain.dart';
import 'scroll.dart';
import 'function.dart';
import 'event.dart';
import 'animate.dart';
import 'custom.dart';
import 'fileandhttp.dart';
import 'package.dart';
import 'base/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      routes: {
        "base": (context) => BaseItem("基础组件"),
        "layout": (context) => LayoutItem("布局类组件"),
        "contain": (context) => ContainItem("容器类组件"),
        "scroll": (context) => ScrollItem("可滚动组件"),
        "function": (context) => FunctionItem("功能型组件"),
        "event": (context) => EventItem("事件处理与通知"),
        "animate": (context) => AnimateItem("动画"),
        "custom": (context) => CustomItem("自定义组件"),
        "fileandhttp": (context) => FileAndHttpItem("文件操作与网络请求"),
        "package": (context) => PackageItem("包与插件"),
        "rowandcolumn": (context) => RowAndColumnItem("row column 布局类组件"),
        "status": (context) => Status(),
      },
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Container(
              width: double.infinity,
              child: Text(
                "flutter demo",
                textAlign: TextAlign.center,
              )),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Item("基础组件", "base"),
              Item("布局类组件", "layout"),
              Item("容器类组件", "contain"),
              Item("可滚动组件", "scroll"),
              Item("功能型组件", "function"),
              Item("事件处理与通知", "event"),
              Item("动画", "animate"),
              Item("自定义组件", "custom"),
              Item("文件操作与网络请求", "fileandhttp"),
              Item("包与插件", "package"),
            ],
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Image> images = [
    Image.asset(
      "images/jd_icon.png",
      width: 100,
    ),
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      images.add(Image.asset(
        "images/jd_icon.png",
        width: 100,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Container(
              height: 300,
              child: Scrollbar(
                  child: SingleChildScrollView(
                      padding: EdgeInsets.all(16.0),
                      physics: BouncingScrollPhysics(),
                      child: Center(
                        child: Column(
                          children: images.toList(),
                        ),
                      ))),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.ac_unit, color: Colors.red),
        backgroundColor: Colors.green,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
