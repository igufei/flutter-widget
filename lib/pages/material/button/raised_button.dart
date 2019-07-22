import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class RaisedButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'RaisedBotton',
      text: _text,
      code: _code,
      example: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('圆角按钮'),
              textColor: Colors.white,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
            ),
            Divider(),
            RaisedButton(
              child: Text('缺角按钮'),
              textColor: Colors.white,
              color: Colors.orangeAccent,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
            ),
            Divider(),
            RaisedButton(
              child: Text('无法点击'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: null,
            ),
            Divider(),
            RaisedButton(
              child: Text('体育场按钮'),
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {},
              shape: StadiumBorder(),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

final _text = '''一个凸起的按钮''';

final _code = '''RaisedButton({
    Key key,
    @required VoidCallback onPressed,//点击按钮后回调
    ValueChanged<bool> onHighlightChanged,//按下后按钮颜色高亮后回调
    ButtonTextTheme textTheme,//
    Color textColor,// 设置字体颜色
    Color disabledTextColor,//禁用状态下的字体颜色
    Color color,//背景颜色
    Color disabledColor,//禁用状态下的背景颜色
    Color highlightColor,//高亮颜色，按下时的颜色
    Color splashColor,//水波的颜色
    Brightness colorBrightness,//设置了 textColor 无效。dark 是白色 light 是黑色
    double elevation,//阴影值
    double highlightElevation,//高亮时的阴影值
    double disabledElevation,//禁用时的阴影值
    EdgeInsetsGeometry padding,//内边距
    ShapeBorder shape,//形状
    Clip clipBehavior = Clip.none,//剪裁方式
    MaterialTapTargetSize materialTapTargetSize,//
    Duration animationDuration,//动画的持续时间
    Widget child,//button内显示的widget，一般设置文本，也可以放一个icon,让它变成一个IconButton
})''';
