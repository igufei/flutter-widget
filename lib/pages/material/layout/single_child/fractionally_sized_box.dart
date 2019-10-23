import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class FractionallySizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'FractionallySizedBox',
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
            color: Colors.blue,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Container(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''将其子部件的大小调整到总可用空间的一小部分。
如果非空，[widthFactor]和[heightFactor]参数必须是非负的。''';

final _code = '''FractionallySizedBox({
  Key key,
  this.alignment = Alignment.center,//对齐方式
  this.widthFactor,//如果非空，则指定给子元素的传入宽度的百分比。
  this.heightFactor,//如果非空，则指定给子元素的传入长度的百分比。
  Widget child,//子部件
})
''';
