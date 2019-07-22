import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class PopupMenuButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'PopupMenuButton',
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
  var _color = Colors.blue;
  var _val = 'blue';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              color: _color,
              width: 100,
              height: 100,
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text('红色'), value: 'red'),
                  PopupMenuItem(child: Text('黄色'), value: 'yellow'),
                  PopupMenuItem(child: Text('蓝色'), value: 'blue'),
                ];
              },
              initialValue: _val,
              tooltip: '请选择颜色',
              padding: EdgeInsets.zero,
              onSelected: (val) {
                var boxColor;
                switch (val) {
                  case 'red':
                    boxColor = Colors.red;
                    break;
                  case 'yellow':
                    boxColor = Colors.yellow;
                    break;
                  case 'blue':
                    boxColor = Colors.blue;
                    break;
                  default:
                    boxColor = Colors.white;
                }
                setState(() {
                  this._color = boxColor;
                  _val = val;
                });
              },
              //child: Text('请选择颜色'),
              icon: Icon(
                Icons.color_lens,
                color: Colors.greenAccent,
              ),
              offset: Offset(200, 200),
            ),
          ],
        ));
  }
}

final _text = '''
一个点击后弹出菜单的按钮,
''';

final _code = '''PopupMenuButton({
    Key key,
    @required this.itemBuilder,//列表构建器
    this.initialValue,
    this.onSelected,//选中回调
    this.onCanceled,//取消回调
    this.tooltip,//按住显示的文本提示
    this.elevation = 8.0,//阴影值
    this.padding = const EdgeInsets.all(8.0),//内边距
    this.child,//子widget,与icon只能设置一个
    this.icon,//icon与child只能设置一个
    this.offset = Offset.zero,//菜单显示的位置偏移量
  })

''';
