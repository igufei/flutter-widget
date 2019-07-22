import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Card',
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
      padding: EdgeInsets.only(top:20),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                'https://upload.jianshu.io/users/upload_avatars/18306372/1589e067-70c6-4acb-8ba0-b426bff0c3f2.jpg',
                width: 200,
              ),
            ),
            color: Colors.grey[100],
            elevation: 10,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            //borderOnForeground: true,
            semanticContainer: false,
          )
        ],
      ),
    );
  }
}

final _text = '''
创建一个material design风格的卡片容器。
[elevation]必须为空或非负。[borderOnForeground]不能为空。
''';

final _code = '''
Card({
  Key key,
  this.color,//背景色
  this.elevation,//阴影值
  this.shape,//外形
  this.borderOnForeground = true,//是否在[child]前面绘制[shape]边框。
默认值为true。如果为false，则在[child]后面绘制边框。测试没有什么用啊
  this.margin,//外边距
  this.clipBehavior,//切边处理
  this.child,//子widget
  this.semanticContainer = true,
}) 
''';
