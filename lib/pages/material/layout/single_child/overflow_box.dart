import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class OverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'OverflowBox',
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
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
            padding: const EdgeInsets.all(5.0),
            child: OverflowBox(
              alignment: Alignment.topLeft,
              maxWidth: 200.0,
              maxHeight: 200.0,
              minHeight: 150,
              minWidth: 150,
              child: Container(
                color: Colors.red,
                width: 80.0,
                height: 400.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''这个widget对子widget施加的约束与父widget的约束不同，允许子widget溢出父widget''';

final _code = '''OverflowBox({
  Key key,
  this.alignment = Alignment.center,//子widget的对齐方式
  this.minWidth,//最小宽限制
  this.maxWidth,//最大宽限制
  this.minHeight,//最小高度限制
  this.maxHeight,//最大高度限制
  Widget child,//子widget
})
''';
