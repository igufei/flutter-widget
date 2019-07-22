import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Text',
      text: _text,
      code: _code,
      example: Container(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

final _text = ''' textAlign 文本在text组件中对齐方式
    参数类型（TextAlign）

    left      - 向左对齐
    right    - 向右对齐
    center - 居中对齐
    justify  - 两端对齐
    start    - 从文本开始方向对齐
    end     - 从文本结束方向对齐

textDirection 文本方向
    参数类型（TextDirection）

    rtl  - 从右向左开始
    ltr  - 从左向右开始

softWrap 文本是否允许换行
    参数类型（bool）
    overflow 文本溢出时展示效果

参数类型（TextOverflow）
    clip  - 溢出时直接截断（softWrap必须为false）
    fade  - 溢出时以渐变结尾
    ellipsis  - 溢出时以省略号结尾

textScaleFactor 文件缩放大小
    参数类型（double）

maxLines 最大行数
    参数类型（int）

semanticsLabel 为组件设置标签
    参数类型（string）

style
fontSize 文字大小
参数类型（double）
fontWeight 文字加粗
参数类型（FontWeight）

w100 ~ w900
normal = w400
bold = w700

fontStyle 字体变形
参数类型（FontStyle）

normal 正体
italic 斜体

letterSpacing 文字间距
参数类型（double）
wordSpacing 单词间距
参数类型（double）
textBaseline 文字基线对齐
参数类型（TextBaseline）

alphabetic
ideographic

height 文字行距
参数类型（double）
foreground 文字前景
参数类型（Paint）

设置字体颜色
不能与text color属性同在

background 文字背景
参数类型（Paint）
shadows 文字阴影
参数类型（Shadow）

color - 阴影颜色
offset - 阴影距离
blurRadius - 阴影透明度
spreadRadius - 阴影模糊度

decoration 文字装饰线
参数类型（TextDecoration）

underline - 下划线
overline - 上划线
lineThrough - 中划线

decorationColor 装饰线颜色
参数类型（Color）
decorationStyle 装饰线风格
参数类型（TextDecorationStyle）

solid - 实线
double - 双划实线
dashed - 虚线
dotted - 点线
wavy - 波浪线

fontFamily 文字字体
参数类型（String字体名称）

在pubspec.yaml中配置

 #字体设置
  fonts:
    - family: 字体名称
      fonts:
        - asset: fonts/字体名称.ttf''';

final _code = ''' const Text(
    this.data,//需要显示的文本
    {
    Key key,
    this.style,//文本样式
    this.strutStyle,//支撑样式
    this.textAlign,//文本对齐方式
    this.textDirection,//文字的排列方向
    this.locale,//基本用不到
    this.softWrap,//文本超过一行，是否需要换行
    this.overflow,//如何处理文本溢出，softWrap为false有效
    this.textScaleFactor,//每个逻辑像素的字体像素数
    this.maxLines,//文本显示的最大行,不能超过这个数
    this.semanticsLabel,//没有测试出效果
  })''';
