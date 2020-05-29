import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理"),
      ),
      body: Center(
        child: Column(children: [
          TapboxA(),
          ParentWidget(),
          ParentWidgetC(),
        ]),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;
  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  bool active = false;
  ValueChanged<bool> onChanged;
  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "TapboxB Active" : "TapboxB Incative",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
    ;
  }
}

class TapboxA extends StatefulWidget {
  @override
  _TapboxAState createState() {
    // TODO: implement createState
    return _TapboxAState();
  }
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            _active ? "TapboxA Active" : "TapboxA Incative",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}

class ParentWidgetC extends StatefulWidget {
  @override
  ParentWidgetCState createState() {
    // TODO: implement createState
    return ParentWidgetCState();
  }
}

class ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;
  void handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TapboxC(
        active: _active,
        onChanged: handleTapboxChanged,
      ),
    );
  }
}

class TapboxC extends StatefulWidget {
  bool active;
  ValueChanged<bool> onChanged;

  TapboxC({Key key, this.active, @required this.onChanged}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TapboxCState();
  }
}

class _TapboxCState extends State<TapboxC> {
  bool highlight = false;

  void handleTapDown(TapDownDetails details) {
    setState(() {
      highlight = true;
    });
  }

  void handleTapup(TapUpDetails details) {
    setState(() {
      highlight = false;
    });
  }

  void handleTapCancel() {
    setState(() {
      highlight = false;
    });
  }

  void handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
        onTapDown: handleTapDown,
        onTapUp: handleTapup,
        onTap: handleTap,
        onTapCancel: handleTapCancel,
        child: Container(
          child: Center(
            child: Text(
              widget.active ? "Active" : "Inactive",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
              border: highlight
                  ? Border.all(
                      color: Colors.teal[700],
                      width: 10,
                    )
                  : null),
        ));
  }
}
