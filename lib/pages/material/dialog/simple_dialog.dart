import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class SimpleDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'SimpleDialog',
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
                  return SimpleDialog(
                    title: Text('提示',style: TextStyle(fontSize: 18),),
                    children: <Widget>[Text('您有一条新短消息！')],
                    //backgroundColor: Colors.blueAccent[100],
                    elevation: 20,
                    contentPadding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
创建一个简单的对话框。
通常与[showDialog]一起使用。
参数[titlepadd]和[contentPadding]不能为空
''';

final _code = '''
SimpleDialog({
  Key key,
  this.title,//对话框标题
  this.titlePadding = const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),//标题内边距
  this.children,//子widget
  this.contentPadding = const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),//内容内边距
  this.backgroundColor,//背景颜色
  this.elevation,//阴影
  this.semanticLabel,//
  this.shape,//边框外形
}) 
''';
