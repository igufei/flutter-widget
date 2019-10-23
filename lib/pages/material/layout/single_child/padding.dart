import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Padding',
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
              width: 200,
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Colors.blue,
                  child: Text('红色边框的宽度就是padding 控件设置的内边距宽度'),
                ),
              ),
              color: Colors.red)
        ],
      ),
    );
  }
}

final _text = '''创建一个有内边距的widget,[padding]参数不能为空''';

final _code = '''Padding({
  Key key,
  @required this.padding,//内边距
  Widget child,//子widget
})
''';
