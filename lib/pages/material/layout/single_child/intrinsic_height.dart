import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class IntrinsicHeightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'IntrinsicHeight',
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

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          IntrinsicHeight(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(color: Colors.blue, width: 100.0),
                new Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 100.0,
                ),
                new Container(color: Colors.yellow, width: 150.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''这个控件的作用，是将可能高度不受限制的child，调整到一个合适并且合理的尺寸。
避免使用(官方建议)
''';

final _code = '''
IntrinsicHeight({Key key, Widget child})
''';
