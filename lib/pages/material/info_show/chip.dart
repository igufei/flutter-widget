import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Chip',
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
  List<Girl> _girls = [
    Girl(name: '阿纯', image: 'https://upload.jianshu.io/users/upload_avatars/18306372/1589e067-70c6-4acb-8ba0-b426bff0c3f2.jpg'),
    Girl(name: 'abbily', image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562596805868&di=9c228b46a884859d6187d84fc1c0befe&imgtype=0&src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Farchive%2F932636cad5da256d4820b060320492a3c723d5d9.jpg'),
    Girl(name: '轩墨宝宝', image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562596726274&di=b48080556739a56791fde01882970f06&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw640h426%2F20180126%2F0c41-fyqzcxf8925052.jpg'),
    Girl(name: '艾比欲', image: 'https://inews.gtimg.com/newsapp_bt/0/7927809622/1000'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('删除您不喜欢的女装大佬'),
          ),
          Column(
            children: _girls
                .map(
                  (f) => Chip(
                        avatar: CircleAvatar(
                          backgroundImage: NetworkImage(
                              f.image),
                        ),
                        label: Text(f.name),
                        onDeleted: () {
                          setState(() {
                            _girls.remove(f);
                          });
                        },
                        deleteIconColor: Colors.brown,
                        deleteButtonTooltipMessage: '这是一个删除button',
                        elevation: 10,
                      )
                )
                .toList(),
          )],
      ),
    );
  }
}

final _text = '''
创建一个material design风格的Chip。
[label]和[clipBehavior]参数不能为空。[elevation]必须为空或非负。
''';

final _code = '''
Chip({
  Key key,
  this.avatar,//显示在label之前的Widget
  @required this.label,//chip内容
  this.labelStyle,//chip内容样式
  this.labelPadding,//chip内边距
  this.deleteIcon,//显示在最右边的widget，会在onDeleted不为null时显示
  this.onDeleted,//点击[deleteIcon]widget的回调，如果[deleteIcon]为空，将使用默认的
  this.deleteIconColor,//[deleteIconColor]颜色
  this.deleteButtonTooltipMessage,//按住[deleteIcon]显示在下面的文本提示
  this.shape,//chip外形，
  this.clipBehavior = Clip.none,//切边处理
  this.backgroundColor,//背景颜色
  this.padding,//内边距
  this.materialTapTargetSize,
  this.elevation,//阴影高度
  this.shadowColor,//阴影颜色
})
''';

class Girl {
  String name;
  String image;
  Girl({this.name, this.image});
}
