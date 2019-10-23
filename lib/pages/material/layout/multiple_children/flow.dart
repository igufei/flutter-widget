import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class FlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Flow',
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
    const width = 80.0;
    const height = 60.0;
    return Container(
      width: double.infinity,
      height: 450,
      child: Flow(
        delegate: TestFlowDelegate(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
        children: <Widget>[
          new Container(
            width: width,
            height: height,
            color: Colors.yellow,
          ),
          new Container(
            width: width,
            height: height,
            color: Colors.green,
          ),
          new Container(
            width: width,
            height: height,
            color: Colors.red,
          ),
          new Container(
            width: width,
            height: height,
            color: Colors.black,
          ),
          new Container(
            width: width,
            height: height,
            color: Colors.blue,
          ),
          new Container(
            width: width,
            height: height,
            color: Colors.lightGreenAccent,
          ),
        ],
      ),
    );
  }
}

final _text = '''创建流布局。
将每个给定的子元素封装在[RepaintBoundary]中，以避免在流重绘时重绘子元素。
[delegate]参数不能为空''';

final _code = '''Flow({
  Key key,
  @required this.delegate,
  List<Widget> children = const <Widget>[],
}) 
''';

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
