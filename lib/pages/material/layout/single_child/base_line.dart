import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class BaselinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Baseline',
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
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "How ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "are ",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "you ",
                style: TextStyle(fontSize: 13),
              ),
              Text(
                "?",
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  "How ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  "are ",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  "you ",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  "?",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final _text = '''根据child的baseline定位child的小部件，即使得不同的child都处在规定的基线位置，尤其是多用在文字排版中，比如使得不同大小的文字处于同一水平线。
''';

final _code = '''Baseline({
  Key key,
  @required this.baseline,//基准线位置，从顶部算起
  @required this.baselineType,alphabetic -用于对齐字母字符的字形底部的水平线；ideographic-用来对齐表意文字的水平线
  Widget child,//子widget
})
''';
