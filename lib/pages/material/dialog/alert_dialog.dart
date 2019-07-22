import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class AlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'AlertDialog',
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            shape: StadiumBorder(),
            child: Text('显示对话框'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      '提示',
                      style: TextStyle(fontSize: 18),
                    ),
                    titlePadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    //backgroundColor: Colors.blueAccent[100],
                    content: Text('你确定要删除这条信息吗?'),
                    elevation: 20,
                    contentPadding: EdgeInsets.all(20),
                    contentTextStyle:
                        TextStyle(fontSize: 16, color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('取消'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child: Text('确认'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

final _text = '''
创建一个警告对话框。
通常与[showDialog]一起使用。
[contentPadding]不能为空。
[titlePadding]默认值为null，这意味着默认值取决于其他属性的值。
''';

final _code = '''
AlertDialog({
  Key key,
  this.title,//标题
  this.titlePadding,//标题widget内边距
  this.titleTextStyle,//标题文本样式
  this.content,//内容widget
  this.contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),//内容widget内边距
  this.contentTextStyle,//内容文本样式
  this.actions,//在对话框content widget下面布局的一组widget，通常放置flatButton与用户交互
  this.backgroundColor,//对话框背景色
  this.elevation,//对话框阴影
  this.semanticLabel,//
  this.shape,//对话框外形
}) 
''';
