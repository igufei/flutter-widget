import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoSwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoSwitch',
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
  bool val1=false,val2=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Divider(height: 0),
          ListTile(
            title: Text('无线局域网'),
            trailing: CupertinoSwitch(
              value: val1,
              onChanged: (val) {
                setState(() {
                 this.val1=val; 
                });
              },
              activeColor: Colors.green[400],
              dragStartBehavior: DragStartBehavior.start,
            ),
          ),
          Divider(height: 0,indent: 20,),
          ListTile(
            title: Text('启用 WAPI'),
            trailing: CupertinoSwitch(
              value: val2,
              onChanged: (val) {
                setState(() {
                 this.val2 =val; 
                });
              },
              activeColor: Colors.green[400],
              dragStartBehavior: DragStartBehavior.start,
            ),
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}

final _text = '''创建一个ios风格的开关。
[value]参数不能为空。参数[dragStartBehavior]默认为[dragStartBehavior.start]，并且不能为空。
''';

final _code = '''
CupertinoSwitch({
    Key key,
    @required this.value,//当前选中的值
    @required this.onChanged,//变量回调
    this.activeColor, //选中时的颜色
    this.dragStartBehavior = DragStartBehavior.start,//滑动时的感觉，很难解决，自己测试感觉 一下
  }) 
''';
