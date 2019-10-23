import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'FittedBox',
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
            width: 100,
            height: 100,
            color: Colors.red,
            child: FittedBox(
              child: Container(width: 50, height: 50, color: Colors.blue),
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomLeft,
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''根据身体的大小来调整孩子的大小和位置。''';

final _code = '''FittedBox({
  Key key,
  this.fit = BoxFit.contain,//如何将子元素在布局的容器中进行空间分配
  this.alignment = Alignment.center,//子元素的对齐方式 
  Widget child,//子元素
})
''';
