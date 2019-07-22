import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class FlatButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'FlatButton',
      text: _text,
      code: _code,
      example: TestButton(),
    );
  }
}

class TestButton extends StatefulWidget {
  @override
  _TestButtonState createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  String _text = '你好吗！';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          child: Text(_text),
          padding: EdgeInsets.all(20),
        ),
        FlatButton(
          child: Text('翻译成英语'),
          onPressed: () {
            setState(() {
              _text = 'how are you?';
            });
          },
        ),
        FlatButton(
          child: Text('翻译成日语'),
          onPressed: () {
            setState(() {
              _text = 'お元気ですか？';
            });
          },
          highlightColor: Colors.deepPurple,
        ),
        FlatButton(
          child: Text('翻译成韩语'),
          onPressed: () {
            setState(() {
              _text = '안녕하세요?';
            });
          },
          color: Colors.blueAccent,
          clipBehavior: Clip.antiAlias,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        FlatButton(
          child: Text('翻译泰语'),
          onHighlightChanged: (b) {
            setState(() {
              _text = '你按得时间有点长';
            });
          },
          onPressed: () {
            setState(() {
              _text = 'สบายดีมั้ย?';
            });
          },
          //textTheme: ButtonTextTheme.accent,
          textColor: Colors.red,
          splashColor: Colors.pink,
        ),
        FlatButton(
          child: Text('点击不了'),
          onPressed: null,
          //textTheme: ButtonTextTheme.accent,
          disabledTextColor: Colors.redAccent,
          disabledColor: Colors.black38,
        ),
      ],
    );
  }
}

final _text = '''
一个扁平的没有边框的按钮,
''';

final _code = '''FlatButton({
    Key key,
    @required VoidCallback onPressed,//点击回调
    ValueChanged<bool> onHighlightChanged,//长按回调
    ButtonTextTheme textTheme,//文本主题ButtonTextTheme.primary|accent
    Color textColor,//文本颜色
    Color disabledTextColor,//禁用时文本颜色
    Color color,//背景颜色
    Color disabledColor,//禁用时背景颜色
    Color highlightColor,//高亮颜色,
    Color splashColor,//按住按钮时波浪渐变颜色
    Brightness colorBrightness,//目前测试字体黑白色，设置textColor后没有效果
    EdgeInsetsGeometry padding,//内边距
    ShapeBorder shape,//形状
    Clip clipBehavior = Clip.none,//对于切边的处理，抗锯齿之类的
    MaterialTapTargetSize materialTapTargetSize,//MaterialTapTargetSize.padded(扩张变大48px*48px)|shrinkWrap(收缩变小)
    @required Widget child,// 子widget
  })
''';
