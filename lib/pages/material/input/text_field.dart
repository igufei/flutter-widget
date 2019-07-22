import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget/widget/widget.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'TextField',
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
  String _tag = '';
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.addListener(() => {
          setState(() {
            if (_focusNode.hasFocus) {
              _tag = '输入框获得了焦点';
            } else {
              _tag = '输入框失去了焦点';
            }
          })
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xff000000),
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(_tag),
          TextField(
            controller: _controller,
            focusNode: _focusNode,
            decoration: InputDecoration(
              //icon: Icon(Icons.phone),
              labelText: '请输入电话号码',
              helperText: '这是一个标准的material风格输入框',
              hintText: 'you phone',
              hasFloatingPlaceholder: false,
              isDense: true,
              contentPadding: EdgeInsets.all(5),
              prefixIcon: Icon(Icons.phone),
              //prefix: Text('手机：'),
              prefixText: '+86 ',
              //prefixStyle: TextStyle(color: Colors.green,fontSize: 20),
              suffix: Icon(Icons.close,size:15,),
              //suffix: Icon(Icons.close),
              filled: true,
              fillColor: Colors.purple[300],
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 0)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 0)),
            ),
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.search,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(color: Colors.blue),
            textAlign: TextAlign.start,
            textDirection: TextDirection.ltr,
            autofocus: false,
            obscureText: false,
            autocorrect: false,
            expands: false,
            maxLength: 11,
            maxLengthEnforced: true,
            onSubmitted: (text) {
              setState(() {
                _tag = text;
              });
            },
            inputFormatters: [],
            cursorWidth: 4.0,
            cursorRadius: Radius.circular(30),
          ),
          Divider(),
        ],
      ),
    );
  }
}

final _text = '''
创建一个Material Design 风格的文本输入框。

如果[decoration]为非null（这是默认值），则要求其祖先之一为[Material]widget。

要完全删除装饰（包括装饰引入的额外填充以节省标签的空间），请将[decoration]设置为null。

可以将[maxLines]属性设置为null以消除对行数的限制。默认情况下，它是一个，这意味着这是一个单行TextField。 [maxLines]不能为零。

默认情况下，[maxLength]属性设置为null，这意味着TextField中允许的字符数不受限制。如果设置了[maxLength]，字符计数器将显示在显示已输入字符数的字段下方。如果该值设置为正整数，则还将显示要输入的最大字符数。如果该值设置为[TextField.noMaxLength]，则仅显示当前长度。

输入[maxLength]字符后，将忽略其他输入，除非[maxLengthEnforced]设置为false。TextField使用[LengthLimitingTextInputFormatter]强制执行长度，该值在提供的[inputFormatters]之后计算，如果有的话。 [maxLength]值必须为null或大于零。

如果[maxLengthEnforced]设置为false，则可以输入多于[maxLength]个字符，并且当超出限制时，错误计数器和分隔符将切换到[decoration.errorStyle]。

[textAlign]，[autofocus]，[obscureText]，[autocorrect]，[maxLengthEnforced]，[scrollPadding]，[maxLines]和[maxLength]参数不能为空。
''';

final _code = '''TextField({
    Key key,
    this.controller,//控制器，可以获取输入框文本，还有其它输入框操作
    this.focusNode,//管理输入框的焦点
    this.decoration = const InputDecoration(),//装饰器，有默认的装饰外观，可以设置成null删除默认装饰
    TextInputType keyboardType,//键盘上的文本输入类型，
    this.textInputAction,//键盘上操作按钮的类型
    this.textCapitalization = TextCapitalization.none,//配置字母大小的，只对keyboardType.text有效
    this.style,//输入框内的文本样式，也对[decoration]有效
    this.strutStyle,//这个属性没有研究
    this.textAlign = TextAlign.start,//输入框文本的对齐方式
    this.textDirection,//文本的方向性，一些特殊国家的文字有这需求
    this.autofocus = false,//输入框是否自动获取焦点弹出键盘，否则需要用户自行点击
    this.obscureText = false,//是否隐藏输入的文本，一般用于密码输入
    this.autocorrect = true,//是否启用自动更正。
    this.maxLines = 1,//可以输入的最大行
    this.minLines,//可以输入的最小行
    this.expands = false,//如果设置为true并包装在[Expanded]或[SizedBox]等父窗口小部件中，则输入将展开以填充父级。当此设置为true时，[maxLines]和[minLines]必须都为null，否则将引发错误。
    this.maxLength,//最大可以输入的字符数量
    this.maxLengthEnforced = true,//如果为true，输入的字符数量到达maxLength设置的数量,那么你就不能再输入了
    this.onChanged,//输入框文本改变后的回调
    this.onEditingComplete,//在点击键盘上的确认按钮后的回调
    this.onSubmitted,//完成文本输入后的回调，通常是失去焦点后
    this.inputFormatters,//当文本输入更改时，格式化程序以提供顺序运行。
    this.enabled,//是否禁用
    this.cursorWidth = 2.0,//光标的宽度
    this.cursorRadius,//可以设置光标的圆角
    this.cursorColor,//光标的颜色
    this.keyboardAppearance,//键盘的外观，只适用于ios系统
    this.scrollPadding = const EdgeInsets.all(20.0),//本人没有测试过效果
    this.dragStartBehavior = DragStartBehavior.start,//处理拖动开始行为的方式。
    this.enableInteractiveSelection,//如果为true，长按输入框将显示剪切/复制/粘贴菜单
    this.onTap,//点击回调
    this.buildCounter,//当设置了maxLength后，右下角会出现字数。buildCounter属性，可以自定义右下角的字数显示。
    this.scrollPhysics,//滚动物理学，用于滚动的惯性处理
  })
  //******************
InputDecoration({
    this.icon,//显示在输入左边的图标,显示在输入框外面
    this.labelText,//显示在输入框上面的文本
    this.labelStyle,//labelText文本样式
    this.helperText,//显示在输入框下面的文本
    this.helperStyle,//helperText文本样式
    this.hintText,//显示在输入框里的文本，输入框为null时显示
    this.hintStyle,//样式
    this.hintMaxLines,//最大行
    this.errorText,//错误提示文本，和helperText位置一样，如果两都为不为null,那只会显示errorText
    this.errorStyle,//样式
    this.errorMaxLines,//最大行
    this.hasFloatingPlaceholder = true,//如果为true输入框获得焦点时labelText将会移动到上方，否则会消失
    this.isDense,//如果值为true输入框整体会变小
    this.contentPadding,//输入框内边距
    this.prefixIcon,//显示在输入左边的图标,显示在输入框里面
    this.prefix,//显示在输入光标最前面的widget;和PrefixText只能出现一个
    this.prefixText,//显示在输入光标最前面的文本;和PrefixText只能出现一个
    this.prefixStyle,//prefixText的样式
    this.suffixIcon,//显示在输入框最右边的Widget
    this.suffix,//显示在suffixIcon前面
    this.suffixText,//显示在输入框右边的文本
    this.suffixStyle,//suffixText样式
    this.counter,//显示在右下角记数器位置的widget，会覆盖已有记录器
    this.counterText,//显示在右下角记数器位置的Text，会覆盖已有记录器
    this.counterStyle,//counterText的样式
    this.filled,//测试了一下默认情况下中介改变了输入框的背景色为灰色
    this.fillColor,//[filled]为true，会改变输入框的背景色
    this.errorBorder,//错误时的边框样式
    this.focusedBorder,//获取焦点时的边框样式
    this.focusedErrorBorder,//获取焦点时错误的边框样式
    this.disabledBorder,//禁用时的边框样式
    this.enabledBorder,//可用时的边框样式
    this.border,//边框
    this.enabled = true,//输入框是否可用
    this.semanticCounterText,//语言标签
    this.alignLabelWithHint,//没有测试
  }) 
''';
