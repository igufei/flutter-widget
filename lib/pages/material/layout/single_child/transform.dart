import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Transform',
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
          Center(
            child: Transform(
              transform: Matrix4.rotationZ(0.3),
              child: Container(
                color: Colors.blue,
                width: 100.0,
                height: 100.0,
                child: Text('hello'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

final _text = '''创建一个可以变形的容器
''';

final _code = ''' Transform({
  Key key,
  @required this.transform,//这个设置可以改变child的形状
  this.origin,//旋转点，相对于左上角顶点的偏移。默认旋转点事左上角顶点。
  this.alignment,//对齐方式。
  this.transformHitTests = true,//点击区域是否也做相应的改变
  Widget child,//子widget
})
''';
