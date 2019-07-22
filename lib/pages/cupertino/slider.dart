import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoSliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoSlider',
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
  double _val =0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        
        children: <Widget>[
          Text(this._val.toStringAsFixed(0)),
          CupertinoSlider(
            value: _val,
            onChanged: (val) {
              setState(() {
               this._val = val; 
              });
            },
            divisions: 10,
            activeColor: Colors.amberAccent,
            min: 0,
            max: 10,
          )
        ],
      ),
    );
  }
}

final _text = '''创建一个ios风格的滑块。
滑块本身不维护任何状态。相反，当滑块的状态发生变化时，小部件调用[onChanged]回调。大多数使用滑块的小部件都会侦听[onChanged]回调并使用新的[值]重新构建滑块，以更新滑块的视觉外观。
[value]确定此滑块当前选定的值。
当用户为滑块选择一个新值时调用[onChanged]。
[onChangeStart]在用户开始为滑块选择新值时调用。
当用户完成时调用[onChangeEnd]
''';

final _code = '''
CupertinoSlider({
    Key key,
    @required this.value,//此滑块当前选定的值
    @required this.onChanged,//
    this.onChangeStart,//
    this.onChangeEnd,//
    this.min = 0.0,//
    this.max = 1.0,//
    this.divisions,//离散除法的个数,也就是说把这个滑块平均n份，每次滑动到1++/n位置
    this.activeColor,//已选定的滑块部分的颜色
  }) 
''';
