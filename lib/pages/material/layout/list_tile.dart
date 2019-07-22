import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class ListTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'ListTile',
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
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('8：30'),
            subtitle: Text('每天的起床时间'),
            trailing: Icon(Icons.arrow_right),
            dense: true,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('9：00'),
            subtitle: Text('每天的工作时间'),
            trailing: Icon(Icons.arrow_right),
            dense: true,
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('11：30'),
            subtitle: Text('每天中午的吃饭时间'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('17：30'),
            subtitle: Text('每天的下班时间'),
            trailing: Icon(Icons.arrow_right),
            dense: true,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

final _text = '''
如果[isThreeLine]为真，那么[subtitle]一定不能为空。
需要它的一个祖先就[Material]widget。
''';

final _code = '''
ListTile({
  Key key,
  this.leading,//显示在最左边的区域，通常用来绘制Icon
  this.title,//文本标题
  this.subtitle,//副标题
  this.trailing,//显示在最右边的区域，通常用来绘制Icon
  this.isThreeLine = false,//是否是三行
  this.dense,//是否让整个[ListTile]整体变得小一点
  this.contentPadding,//内容内容边距
  this.enabled = true,//是否禁用
  this.onTap,//点击回调
  this.onLongPress,//长按回调
  this.selected = false,//是否是选中的
}) 
''';
