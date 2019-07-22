import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class DividerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Divider',
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
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Divider(height: 0),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('8：30'),
            subtitle: Text('每天的起床时间'),
            trailing: Icon(Icons.arrow_right),
            dense: true,
            onTap: () {},
          ),
          Divider(
            height: 0,
            indent: 20,
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('9：00'),
            subtitle: Text('每天的工作时间'),
            trailing: Icon(Icons.arrow_right),
            dense: true,
            onTap: () {},
          ),
          Divider(
            height: 0,
            indent: 20,
            color: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('11：30'),
            subtitle: Text('每天中午的吃饭时间'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
            dense: true,
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}

final _text = '''
创建一个material design 水平分割线
高度必须为正。
''';

final _code = '''
Divider({
  Key key,
  this.height = 16.0,//高度
  this.indent = 0.0,//左边空白量
  this.color,//颜色
})  
''';
