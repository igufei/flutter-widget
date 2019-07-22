import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class BottomSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'BottmSheet',
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

class _TestState extends State<Test> with TickerProviderStateMixin {
  var _ctr;
  var _text = '';
  @override
  void initState() {
    //可以控制动画效果
    _ctr = new AnimationController( vsync: this);
    super.initState();
  }

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
            child: Text('显示菜单'),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BottomSheet(
                    animationController: _ctr,
                    enableDrag: false,
                    elevation: 20,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            dense: true,
                            title: Text('选项1'),
                            onTap: () {
                              setState(() {
                                _text = '你选择了选项1';
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            dense: true,
                            title: Text('选项2'),
                            onTap: () {
                              setState(() {
                                _text = '你选择了选项2';
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            dense: true,
                            title: Text('选项3'),
                            onTap: () {
                              setState(() {
                                _text = '你选择了选项3';
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                    onClosing: () {},
                  );
                },
              );
            },
          ),
          Text(_text),
        ],
      ),
    );
  }
}

final _text = '''
在页面底部创建一个widget(子widget通过builder属性自行构建),有从底向上滑出来的动画效果。
用[showModalBottomSheet][Scaffold.of(context).showBottomSheet]显示。
''';

final _code = '''
BottomSheet({
  Key key,
  this.animationController,//控制器
  this.enableDrag = true,//如果为false可以向下滑动关闭BottomSheet
  this.elevation = 0.0,//阴影
  @required this.onClosing,//关闭BottomSheet回调
  @required this.builder,//子widget构建器
}) 
''';
