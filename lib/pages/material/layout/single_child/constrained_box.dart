import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'ConstrainedBox',
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
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 50,
              maxHeight: 100,
            ),
            child: Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
          ),
          Divider(),
          Text('''ConstrainedBox(
  constraints: BoxConstraints(
    minHeight: 50,
    maxHeight: 100,
  ),
  //[Container]设置的长宽在这里不起作用，因为它被[BoxConstraints]约束了
  child: Container(
    width: 20,
    height: 20,
    color: Colors.red,
  ),
)''')
        ],
      ),
    );
  }
}

final _text = '''附加约束的小部件。
如果您想让子元素的最小高度为50.0逻辑像素，可以使用const BoxConstraints(minHeight: 50.0)作为约束。''';

final _code = '''ConstrainedBox({
  Key key,
  @required this.constraints,//附加给[child]的约束
  Widget child,//子widget
})
''';
