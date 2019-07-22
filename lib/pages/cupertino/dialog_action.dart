import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoDialogActionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoDialogAction',
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
           RaisedButton(
            child: Text('显示对话框'),
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('提示'),
                      content: Text('你要删除这条消息吗？'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('取消'),
                          isDefaultAction: false,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('确认'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          )
        
        ],
      ),
    );
  }
}

final _text = '''
为ios样式的对话框创建一个操作。
''';

final _code = '''
//没有边框的文本button
CupertinoDialogAction({
  this.onPressed,//点击回调
  this.isDefaultAction = false,//没有什么变化 
  this.isDestructiveAction = false,//此操作是否销毁对象,字体颜色变成红色
  this.textStyle,//文本颜色
  @required this.child,//子widget
})
''';
