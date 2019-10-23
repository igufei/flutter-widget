import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'align',
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
            height: 150,
            width: 150,
            alignment: Alignment.bottomRight,
            color: Colors.red,
            child: Align(
              alignment: Alignment.topRight,
              widthFactor: 1.2,
              heightFactor: 1.2,
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}

final _text = '''创建对齐小部件。
对齐默认为[align .center]
它可以控制自身在父级widget中的对齐方法''';

final _code = '''Align({
  Key key,
  this.alignment = Alignment.center,//对齐的类型
  this.widthFactor,//设置Aligin控制自身的width为[child]的[widthFactor]倍
  this.heightFactor,//设置Aligin控制自身的height为[child]的[heightFactor]倍
  Widget child,//子widget
})
''';
