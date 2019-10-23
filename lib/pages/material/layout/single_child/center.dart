import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Center',
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
        crossAxisAlignment: CrossAxisAlignment.start,//对【center】无效
        children: <Widget>[
          Text('我没有默认布局'),
          Center(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            alignment: Alignment.bottomRight,//对【center】无效
            child: Center(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''一个小部件，它将子部件集中在自己内部。
如果这个小部件的维度受到限制，并且widthFactor和heightFactor为空，那么它将尽可能大。如果一个维度是无约束的，并且相应的大小因子为null，那么小部件将匹配其子元素在该维度中的大小。如果大小因子是非空的，则此小部件的对应维度将是子维度和大小因子的乘积。例如，如果widthFactor是2.0，那么这个小部件的宽度总是其子部件宽度的两倍。''';

final _code = '''Center({
  Key key,
  double widthFactor,//如果非空，则将其宽度设置为[child]宽度乘以[widthFactor]设置的值
  double heightFactor,//如果非空，则将其高度设置为[child]宽度乘以[widthFactor]设置的值
  Widget child,//子widget
})
''';
