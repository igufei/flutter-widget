import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoActionSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoActionSheet',
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
          CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text('提示'),
                      message: Text('您要删除这条信息吗？'),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          onPressed: () {},
                          child: Text('a'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {},
                          child: Text('b'),
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        isDestructiveAction: true,
                        child: Text('取消'),
                      ),
                    );
                  });
            },
            child: Text('显示CupertinoActionSheet'),
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}

final _text =
    '''它向用户提供一组与当前上下文相关的两个或多个选项。操作表可以有标题、附加消息和操作列表。标题显示在消息上方，动作显示在内容下方。
此操作表对标题和消息进行样式设置，以匹配标准iOS操作表标题和消息文本样式。
''';

final _code = '''CupertinoActionSheet({
  Key key,
  this.title,//通常是[Text]（标题文本）,布局在顶部
  this.message,//通常是[Text]（消息文本）,布局在[title]下面
  this.actions,//通常这是一个[CupertinoActionSheetAction]小部件列表。
  this.messageScrollController,//一种滚动控制器,控制[message]滚动
  this.actionScrollController,//一种滚动控制器,控制[actions]滚动
  this.cancelButton,//通常这是一个[CupertinoActionSheetAction]小部件
}) 

CupertinoActionSheetAction({
  @required this.onPressed,//点击回调
  this.isDefaultAction = false,//如果为true字体会变粗
  this.isDestructiveAction = false,//如果为true字体颜色会变成红色
  @required this.child,//子widget
})
''';
