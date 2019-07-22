import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'SnackBar',
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
          FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            shape: StadiumBorder(),
            child: Text('显示SnackBar'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('您收到一条短信息！'),
                backgroundColor: Colors.brown,
                action: SnackBarAction(
                  label: '关闭',
                  onPressed: () {},
                ),
                duration: Duration(seconds: 5),
              ));
            },
          )
        ],
      ),
    );
  }
}

final _text = '''
显示在页面底部的一个widget,一般用来显示提示文本
用Scaffold.of(context).showSnackBar来显示
''';

final _code = '''
SnackBar({
  Key key,
  @required this.content,//内容
  this.backgroundColor,//背景色
  this.action,//显示最右边的扁平文本按钮,
  this.duration = _kSnackBarDisplayDuration,//SnackBar显示时间，到时间自己会自动关闭。
  this.animation,//SnackBar的动画效果
}) 
''';
