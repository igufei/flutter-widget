import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'IconButton',
      text: _text,
      code: _code,
      example: Container(
        //color: Color(0xff000000),
        child: IconButton(
          icon: Icon(Icons.account_balance),
          color: Colors.orangeAccent,
          //highlightColor: Colors.pink,
          splashColor: Colors.purple,
          tooltip: '图标按钮',
          onPressed: () {},
        ),
      ),
    );
  }
}

final _text = '''
一个显示图标的按钮,在AppBar上用得比较多，也可以用在其它地方
''';

final _code = '''IconButton({
    Key key,
    this.iconSize = 24.0,//子widet大小
    this.padding = const EdgeInsets.all(8.0),//内边距
    this.alignment = Alignment.center,//子widet对齐方式 
    @required this.icon,//子widget
    this.color,//子widget颜色
    this.highlightColor,//长按子widget颜色
    this.splashColor,//按下时波浪过度的颜色
    this.disabledColor,//禁用子widget颜色
    @required this.onPressed,//点击回调
    this.tooltip,//长按显示的提示文本
  }) 
''';
