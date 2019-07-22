import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoButton',
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
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          CupertinoButton(
            child: Text('确认',style: TextStyle(fontSize: 14),),
            color: Colors.orange,
            pressedOpacity: 0.5,
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

final _text = '''
''';

final _code = ''' 
CupertinoButton({
  Key key,
  @required this.child,//子widget
  this.padding,//内边框
  this.color,//启用时的背景颜色
  this.disabledColor,//禁用时的背景颜色
  this.minSize = 44.0,//最小尺寸
  this.pressedOpacity = 0.1,//点击透明度
  this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),//边框处理，默认是圆角
  @required this.onPressed,//点击回调
})
''';
