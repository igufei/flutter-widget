import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CustomSingleChildLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CustomSingleChildLayout',
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
      height: 400,
      child: Column(
        children: <Widget>[
          CustomSingleChildLayout(
            delegate: _SakaLayoutDelegate(Size(80, 100), EdgeInsets.all(20)),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class _SakaLayoutDelegate extends SingleChildLayoutDelegate {
  final Size size;
  final EdgeInsetsGeometry padding;

  _SakaLayoutDelegate(this.size, this.padding)
      : assert(size != null),
        assert(padding != null);

  @override
  Size getSize(BoxConstraints constraints) {
    return size;
  }

  @override
  bool shouldRelayout(_SakaLayoutDelegate oldDelegate) {
    return this.size != oldDelegate.size;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(padding.deflateSize(size));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset((size.width - childSize.width) / 2,
        (size.height - childSize.height) / 2);
  }
}

final _text = '''一个小部件，将其单个子元素的布局委托给一个委托。
委托可以确定子元素的布局约束，并可以决定子元素的位置。委托还可以确定父级的大小，但是父级的大小不能依赖于子级的大小''';

final _code = '''CustomSingleChildLayout({
  Key key,
  @required this.delegate,//控制子元素布局的委托
  Widget child,//子widget
})
''';
