import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Radio',
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
  String _groupVal = '0';
  String _groupVal1 = '苹果';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio<String>(
                onChanged: (value) {
                  setState(() {
                    _groupVal = value;
                  });
                },
                value: '0',
                activeColor: Colors.red,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                groupValue: _groupVal,
              ),
              Radio(
                onChanged: (value) {
                  setState(() {
                    _groupVal = value;
                  });
                },
                value: '1',
                activeColor: Colors.red,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                groupValue: _groupVal,
              ),
            ],
          ),
          Divider(),
          RadioListTile<String>(
            onChanged: (value) {
              setState(() {
                _groupVal1 = value;
              });
            },
            value: '苹果',
            groupValue: _groupVal1,
            title: Text('我今天只吃了一个苹果'),
            isThreeLine: false,
            dense: true,
          ),
          RadioListTile<String>(
            onChanged: (value) {
              setState(() {
                _groupVal1 = value;
              });
            },
            value: '香蕉',
            groupValue: _groupVal1,
            title: Text('我今天只吃了一个香蕉'),
            isThreeLine: false,
            dense: true,
          ),
          RadioListTile<String>(
            onChanged: (value) {
              setState(() {
                _groupVal1 = value;
              });
            },
            value: '桔子',
            groupValue: _groupVal1,
            title: Text('我今天只吃了一个桔子'),
            isThreeLine: false,
            dense: true,
          ),Divider(),
        ],
      ),
    );
  }
}

final _text = '''
一个单选框
''';

final _code = '''Radio({
    Key key,
    @required this.value,//状态值true|false
    @required this.groupValue,
    @required this.onChanged,//状态变化回调
    this.activeColor,//Radio被选中时显示的颜色
    this.materialTapTargetSize,
  })

  *****************
  RadioListTile({
    Key key,
    @required this.value,//当前radio所表示的值
    @required this.groupValue,
    @required this.onChanged,//状态变化回调
    this.activeColor,//被选中时显示的颜色
    this.title,//标题
    this.subtitle,//副标题
    this.isThreeLine = false,//是否让列表项显示三行
    this.dense,//是否列表项变小一点
    this.secondary,//显示在最左边的widget，一般是放置ICON
    this.selected = false,//是否是选中的
    this.controlAffinity = ListTileControlAffinity.platform,//如何放置radio的位置，有两个位置一个放在title的最前面，还有就是放在最后面
  })

''';
