import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class IntrinsicWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'IntrinsicWidth',
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
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(5.0),
            child: new IntrinsicWidth(
              stepHeight: 450.0,
              stepWidth: 300.0,
              child: new Column(
                children: <Widget>[
                  new Container(color: Colors.blue, height: 100.0),
                  new Container(color: Colors.red, width: 150.0, height: 100.0),
                  new Container(
                    color: Colors.yellow,
                    height: 150.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''这个控件的作用，是将可能长度不受限制的child，调整到一个合适并且合理的尺寸。
避免使用(官方建议)''';

final _code = '''
当stepWidth不是null的时候，child的宽度将会是stepWidth的倍数，当stepWidth值比child最小宽度小的时候，这个值不起作用；
当stepWidth为null的时候，child的宽度是child的最小宽度；
当stepHeight不为null的时候，效果跟stepWidth相同；
当stepHeight为null的时候，高度取最大高度。

IntrinsicWidth({
  Key key, 
  this.stepWidth, 
  this.stepHeight,
  Widget child
})
''';
