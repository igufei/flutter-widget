import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class LimitedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'LimitedBox',
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
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100.0,
            height: 100,
          ),
          LimitedBox(
            maxWidth: 150.0,
            maxHeight: 150,
            child: Container(
              color: Colors.blue,
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}

final _text = '''创建一个仅在不受约束时限制其大小的框。
参数[maxWidth]和[maxHeight]不能为空，也不能为负''';

final _code = '''LimitedBox({
  Key key,
  this.maxWidth = double.infinity,//限定的最大宽度，默认值是double.infinity，不能为负数。
  this.maxHeight = double.infinity,//限定的最大高度，默认值是double.infinity，不能为负数。
  Widget child,//子widget
})
''';
