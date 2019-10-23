import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class SizedOverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'SizedOverflowBox',
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
            alignment: Alignment.topRight,
            width: 200.0,
            height: 200.0,
            padding: EdgeInsets.all(5.0),
            child: SizedOverflowBox(
              size: Size(100.0, 200.0),
              child: Container(
                color: Colors.red,
                width: 200.0,
                height: 100.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''创建一个固定大小的widget，允许子widget溢出。
参数[size]不能为空。''';

final _code = '''SizedOverflowBox({
  Key key,
  @required this.size,
  this.alignment = Alignment.center,
  Widget child,
})
''';
