import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'AspectRatio',
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
          AspectRatio(
            aspectRatio: 5,
            child: Container(
              color: Colors.red,
            ),
          ),
          Text('abc'),
        ],
      ),
    );
  }
}

final _text = '''创建具有特定长宽比的小部件''';

final _code = '''AspectRatio({
  Key key,
  @required this.aspectRatio,//要使用的长宽比,
  Widget child,
})
''';
