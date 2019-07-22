import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoFullscreenDialogTransitionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoFullscreenDialogTransition',
      text: _text,
      code: _code,
      example: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    this.controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    animation.addListener(() {});
    animation.addStatusListener((status) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('test'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoFullscreenDialogTransition(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('test'),
                        ),
                        animation: animation);
                  });
            },
          )
        ],
      ),
    );
  }
}

final _text = '''创建用于调用全屏对话框的ios样式的转换。
''';

final _code = '''CupertinoFullscreenDialogTransition({
  Key key,
  @required Animation<double> animation,
  @required this.child,
})  
''';
