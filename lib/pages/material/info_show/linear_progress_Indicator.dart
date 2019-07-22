import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class LinearProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'LinearProgressIndicator',
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
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          LinearProgressIndicator(
            value: 0.3,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.tealAccent),
            backgroundColor: Colors.red,
          )
        ],
      ),
    );
  }
}

final _text = '''
创建一个线性进度指示器。
[value]参数对于不确定的进度指示器可以为空，对于确定的进度指示器可以为非空。
''';

final _code = '''
LinearProgressIndicator({
  Key key,
  double value,//进度条值
  Color backgroundColor,//背景色
  Animation<Color> valueColor,////进度条值颜色
  String semanticsLabel,
  String semanticsValue,
})
''';
