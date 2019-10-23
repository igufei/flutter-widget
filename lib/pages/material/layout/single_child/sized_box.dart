import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'SizedBox',
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
          SizedBox(
            width: 200,
            height: 200,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''创建一个固定大小的容器。
child不为null时，如果设置了宽高，则会强制把child尺寸调到此宽高；如果没有设置宽高，则会根据child尺寸进行调整；
child为null时，如果设置了宽高，则自身尺寸调整到此宽高值，如果没设置，则尺寸为0；''';

final _code = '''SizedBox({
  Key key,
  this.width,//宽度
  this.height,//高度
  Widget child,//子widget
})
''';
