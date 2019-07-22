import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoAlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoAlertDialog',
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
      padding: EdgeInsets.all(20),
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
创建一个ios风格的警告对话框。
[actions]不能为空。
''';

final _code = ''' 
CupertinoAlertDialog({
  Key key,
  this.title,//标题
  this.content,//正文
  this.actions = const <Widget>[],//显示在对话框底部的(可选的)操作集
  this.scrollController,//滚动控制
  this.actionScrollController,//
})

//没有边框的文本button
CupertinoDialogAction({
  this.onPressed,//点击回调
  this.isDefaultAction = false,//没有什么变化 
  this.isDestructiveAction = false,//此操作是否销毁对象,字体颜色变成红色
  this.textStyle,//文本颜色
  @required this.child,//子widget
})
''';
