import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CustomMultiChildLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CustomMultiChildLayout',
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
      width: 200.0,
      height: 100.0,
      color: Colors.yellow,
      child: CustomMultiChildLayout(
        delegate: TestLayoutDelegate(),
        children: <Widget>[
          LayoutId(
            id: TestLayoutDelegate.title,
            child: new Text("This is title",
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
          ),
          LayoutId(
            id: TestLayoutDelegate.description,
            child: new Text("This is description",
                style: TextStyle(fontSize: 14.0, color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

final _text = '''创建自定义多个子布局。
[delegate]参数不能为空。''';

final _code = '''CustomMultiChildLayout({
  Key key,
  @required this.delegate,//委托
  List<Widget> children = const <Widget>[],//子控件
})
''';

class TestLayoutDelegate extends MultiChildLayoutDelegate {
  TestLayoutDelegate();

  static const String title = 'title';
  static const String description = 'description';

  @override
  void performLayout(Size size) {
    final BoxConstraints constraints = new BoxConstraints(maxWidth: size.width);

    final Size titleSize = layoutChild(title, constraints);
    positionChild(title, new Offset(0.0, 0.0));

    final double descriptionY = titleSize.height;
    layoutChild(description, constraints);
    positionChild(description, new Offset(0.0, descriptionY));
  }

  @override
  bool shouldRelayout(TestLayoutDelegate oldDelegate) => false;
}
