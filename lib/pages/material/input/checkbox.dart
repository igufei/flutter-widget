import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CheckboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Checkbox',
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
  bool _val = true;
  bool _val1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Checkbox(
            onChanged: (bool value) {
              setState(() {
                _val = value;
              });
            },
            value: _val,
            tristate: false,
            activeColor: Colors.red,
            checkColor: Colors.teal,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          Divider(),
          CheckboxListTile(
            onChanged: (bool value) {
              setState(() {
                _val1 = value;
              });
            },
            value: _val1,
            title: Text('我今天吃饭了'),
            subtitle: Text('我今天吃了好几个馒头'),
            isThreeLine: false,
            dense: true,
            secondary: Icon(Icons.event_seat),
            controlAffinity: ListTileControlAffinity.trailing,
          )
        ],
      ),
    );
  }
}

final _text = '''
一个复选框
''';

final _code = '''Checkbox({
    Key key,
    @required this.value,//状态值true|false 如果tristate为true，可以设置成null 
    this.tristate = false,//如果为true，[value]可以设置成null,checkbox会显示成短划线
    @required this.onChanged,//状态变化回调
    this.activeColor,//checkbox被选中时显示的颜色
    this.checkColor,//checkbox被选中时那个钩的颜色
    this.materialTapTargetSize,//配置点击目标的最小尺寸
  })

  *****************
  CheckboxListTile({
    Key key,
    @required this.value,//状态值true|false 如果tristate为true，可以设置成null
    @required this.onChanged,//状态变化回调
    this.activeColor,//checkbox被选中时显示的颜色
    this.title,//标题
    this.subtitle,//副标题
    this.isThreeLine = false,//是否让checkbox列表项显示三行
    this.dense,//是否变小一点
    this.secondary,//显示在最左边的widget，一般是放置ICON
    this.selected = false,//是否是选中的
    this.controlAffinity = ListTileControlAffinity.platform,//如果放置checkbox的位置，有两个位置一个放在title的最前面，还有就是放在最后面
  }) 
''';
