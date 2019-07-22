import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Tooltip',
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
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          Tooltip(
            message: '我是阿纯小姐姐',
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.jianshu.io/users/upload_avatars/18306372/1589e067-70c6-4acb-8ba0-b426bff0c3f2.jpg'),
            ),
          ),
          Tooltip(
            message: '我是一段文本',
            child: Text('长按我'),
            preferBelow: false,
            excludeFromSemantics: true,
          ),
        ],
      ),
    );
  }
}

final _text = '''
创建一个文本提示。
默认情况下，当用户长按压widget时，通常会显示在[child]widget下面。
''';

final _code = '''Tooltip({
  Key key,
  @required this.message,//显示在[child]下面的提示文本
  this.height = 32.0,//高度
  this.padding = const EdgeInsets.symmetric(horizontal: 16.0),//内边距
  this.verticalOffset = 24.0,//提示文本显示在屏幕中的偏移量
  this.preferBelow = true,//默认显示在[child]的上面，否则在下面
  this.excludeFromSemantics = false,//是否应该将工具提示的[message]从语义树中排除
  this.child,//子widget
}) 
''';
