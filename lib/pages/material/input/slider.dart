import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Slider',
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
  double _val = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Slider(
                  label: '$_val',
                  onChanged: (double value) {
                    setState(() {
                      _val = value;
                    });
                  },
                  value: _val,
                  activeColor: Colors.orange,
                  inactiveColor: Colors.pink,
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  },divisions: 10,),
                  
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

final _text = '''
滑块，允许用户通过滑动滑块来从一系列值中选择。
''';

final _code = '''Slider({
  Key key,
  @required this.value,//表示的值
  @required this.onChanged,//状态变化回调
  this.onChangeStart,//在开始滑动时执行
  this.onChangeEnd,//在结束滑动时垫
  this.min = 0.0,//最小值
  this.max = 1.0,//最大值
  this.divisions,//离散分区的数量,通常与[label]一起使用以显示当前的离散值。如果为null，则滑块是连续的。
  this.label,//滑块处于活动状态时显示在滑块上方的标签。
  this.activeColor,/选中时的颜色
  this.inactiveColor,//示选中时的颜色
  this.semanticFormatterCallback,//
})
''';
