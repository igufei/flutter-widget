import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoTextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoTextField',
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
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          CupertinoTextField(
            controller: _controller,
            placeholder: "placeholder",
            prefix:Icon(Icons.edit,size: 20,),
            prefixMode: OverlayVisibilityMode.always,
            //suffix: Icon(Icons.close,size: 20,),
            suffixMode: OverlayVisibilityMode.editing,
            clearButtonMode:OverlayVisibilityMode.editing ,
          ),
        ],
      ),
    );
  }
}

final _text = '''创建一个ios样式的文本字段。
要提供预填充的文本条目，请将带有初值的[TextEditingController]传递给[controller]参数。
要提供文本条目为空时出现的提示占位符文本，请将[String]传递给[占位符]参数。
可以将[maxLines]属性设置为null，以消除对行数的限制。在这种模式下，小部件的固有高度将随着文本行数的增加而增加。默认情况下，它是1，这意味着这是一个单行文本字段，当覆盖时将水平滚动。[maxLines]
''';

final _code = '''
CupertinoTextField({
  Key key,
  this.controller,//输入控制器
  this.focusNode,//管理输入框的焦点
  this.decoration = _kDefaultRoundedBorderDecoration,//输入框装饰
  this.padding = const EdgeInsets.all(6.0),//输入框内边距
  this.placeholder,//在输入框没有输入文本前显示在输入框里的文本
  this.placeholderStyle = const TextStyle([placeholder]样式 
    fontWeight: FontWeight.w300,
    color: _kInactiveTextColor
  ),
  this.prefix,//显示在输入框内最左边位置的widget
  this.prefixMode = OverlayVisibilityMode.always,//[prefix]在哪种模式下会显示
  this.suffix,//显示在输入框内最右边位置的widget
  this.suffixMode = OverlayVisibilityMode.always,//[suffix]在哪种模式下会显示
  this.clearButtonMode = OverlayVisibilityMode.never,//在[suffix]位置显示一个清除button,[suffix]没有设置时才出现
  TextInputType keyboardType,//键盘输入类型
  this.textInputAction,//键盘上确定button的类型
  this.textCapitalization = TextCapitalization.none,//配置字母大小的，只对keyboardType.text有效
  this.style,//输入框内的文本样式，也对[decoration]有效
  this.strutStyle,
  this.textAlign = TextAlign.start,//输入框文本的对齐方式
  this.readOnly = false,//文本是否可以更改,但可以选择
  this.showCursor,//是否显示光标
  this.autofocus = false,//输入框是否自动获取焦点弹出键盘，否则需要用户自行点击
  this.obscureText = false,//是否让文本变成[*]输入密码时使用设置true
  this.autocorrect = true,//是否启用自动更正。
  this.maxLines = 1,//可以输入的最大行
  this.minLines,//可以输入的最小行
  this.expands = false,//如果设置为true并包装在[Expanded]或[SizedBox]等父窗口小部件中，则输入将展开以填充父级。当此设置为true时，[maxLines]和[minLines]必须都为null，否则将引发错误。
  this.maxLength,//可以输入的最大文本数量
  this.maxLengthEnforced = true,//如果为true，输入的字符数量到达maxLength设置的数量,那么你就不能再输入了
  tthis.onChanged,//输入框文本改变后的回调
  this.onEditingComplete,//在点击键盘上的确认按钮后的回调
  this.onSubmitted,//完成文本输入后的回调，通常是失去焦点后
  this.inputFormatters,//当文本输入更改时，格式化程序以提供顺序运行。
  this.enabled,//是否禁用
  this.cursorWidth = 2.0,//光标的宽度
  this.cursorRadius = const Radius.circular(2.0),//可以设置光标的圆角
  this.cursorColor,//光标的颜色
  this.keyboardAppearance,//键盘的外观，只适用于ios系统
  this.scrollPadding = const EdgeInsets.all(20.0),
  this.dragStartBehavior = DragStartBehavior.start,//处理拖动开始行为的方式。
  this.enableInteractiveSelection,//如果为true，长按输入框将显示剪切/复制/粘贴菜单
  this.scrollController,//滚动控制器
  this.scrollPhysics,
})
''';
