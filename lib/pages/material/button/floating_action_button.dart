import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'FloatingActionButton',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        child: FloatingActionButton(
          child: Icon(Icons.account_balance),
          //heroTag: null,
          foregroundColor: Colors.deepOrange,
          backgroundColor: Colors.lightGreen,
          onPressed: () {},
          shape: CircleBorder(),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          isExtended: false,
          mini: true,
        ),
      ),
    );
  }
}

final _text = '''
一个悬浮在其它界面前面的圆型按钮，通常用来操作常用的动作
它本身并没有悬浮功能，需要它的父widget来布局它。
''';

final _code = '''FloatingActionButton({
    Key key,
    this.child,//子widget，通常放置icon
    this.tooltip,//按住按钮，显示在旁边的文字提示
    this.foregroundColor,//前景颜色，会改变子widget的颜色
    this.backgroundColor,//背景颜色，
    this.heroTag = const _DefaultHeroTag(),
    this.elevation,//阴影
    this.highlightElevation,//按住按钮时的阴影
    this.disabledElevation,//禁用时的阴影
    @required this.onPressed,//点击回调函数
    this.mini = false,//按钮的大小
    this.shape,//按钮的形状
    this.clipBehavior = Clip.none,//对于按钮边缘的绘制处理，抗锯齿之类的
    this.materialTapTargetSize,
    this.isExtended = false,
  })
''';
/* BeveledRectangleBorder//都是直角连接起来
 BoxBorder 
 CircleBorder//圆形
 ContinuousRectangleBorder//可以把角绘制成圆角
 InputBorder //这是一个抽象类，OutlineInputBorder UnderlineInputBorder
 RoundedRectangleBorder //可以把角绘制成圆角
 StadiumBorder //外形像体育场的按钮
 */
