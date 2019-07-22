import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class SwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Switch',
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
  bool _val = false, _val1 = false, _val2 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Switch(
                onChanged: (bool value) {
                  setState(() {
                    _val = value;
                  });
                },
                value: _val,
                activeColor: Colors.brown,
                activeTrackColor: Colors.cyan,
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.lime,
              ),
              Switch(
                onChanged: (bool value) {
                  setState(() {
                    _val1 = value;
                  });
                },
                value: _val1,
                activeThumbImage: NetworkImage(
                    'https://upload.jianshu.io/users/upload_avatars/18306372/1589e067-70c6-4acb-8ba0-b426bff0c3f2.jpg'),
                inactiveThumbImage: NetworkImage(
                    'https://cdn2.jianshu.io/assets/default_avatar/7-0993d41a595d6ab6ef17b19496eb2f21.jpg'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Divider(height: 0),
          SwitchListTile(
            onChanged: (bool value) {
              setState(() {
                _val2 = value;
              });
            },
            value: _val2,
            title: Text('这一个Title'),
            subtitle: Text('这是一个Subtitle'),
            dense: true,
            secondary: Icon(Icons.control_point),
          ),
          Divider(height: 0),

        ],
      ),
    );
  }
}

final _text = '''
一个 material design 风格的开关widget.
''';

final _code = '''Switch({
  Key key,
  @required this.value,//设置Switch是On|Off;值不能为null
  @required this.onChanged,//状态变化回调
  this.activeColor,//选中时滑块的颜色
  this.activeTrackColor,//选中时滑块轨道的颜色
  this.inactiveThumbColor,//未选中时滑块的颜色
  this.inactiveTrackColor,//未选中时滑块轨道的颜色
  this.activeThumbImage,//选中时滑块的背景图片
  this.inactiveThumbImage,//未选中时滑块的背景图片
  this.materialTapTargetSize,
  this.dragStartBehavior = DragStartBehavior.start,//处理拖动行为
})
SwitchListTile({
  Key key,
  @required this.value,//设置Switch是On|Off;值不能为null
  @required this.onChanged,//状态变化回调
  this.activeColor,//被选中时显示的颜色
  this.activeTrackColor,//选中时滑块轨道的颜色
  this.inactiveThumbColor,//未选中时滑块的颜色
  this.inactiveTrackColor,//未选中时滑块轨道的颜色
  this.activeThumbImage,//选中时滑块的背景图片
  this.inactiveThumbImage,//未选中时滑块的背景图片
  this.title,//标题
  this.subtitle,//副标题
  this.isThreeLine = false,//是否让列表项显示三行
  this.dense,//是否列表项变小一点
  this.secondary,//显示在最左边的widget，一般是放置ICON
  this.selected = false,//是否是选中的
})
''';
