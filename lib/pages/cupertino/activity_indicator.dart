import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoActivityIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoActivityIndicator',
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
      width: 200,
      height: 200,
      alignment: Alignment.center,
      child: CupertinoActivityIndicator(
        radius: 15,
      ),
    );
  }
}

final _text = '''
一个iOS风格的loading指示器。显示一个圆形的转圈菊花
''';

final _code = '''CupertinoActivityIndicator({
  Key key,
  this.animating = true,//菊花是否转圈
  this.radius = _kDefaultIndicatorRadius,//菊花半径大小
}) 
''';
