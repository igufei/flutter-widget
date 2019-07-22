import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoPickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoPicker',
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
  FixedExtentScrollController _controller = FixedExtentScrollController();
  List _list = ['a', 'b', 'c', 'd'];
  var _selected = '请选择';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(_selected),
            Divider(),
            CupertinoButton(
              child: Text('显示选择器'),
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (ctx) {
                      return CupertinoPicker(
                        diameterRatio: 1.0,
                        backgroundColor: Colors.white,
                        offAxisFraction: 0.0,
                        useMagnifier: false,
                        magnification: 1.0,
                        squeeze: 1,
                        children: _list.map((n) => Text(n)).toList(),
                        itemExtent: 30,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            _selected = _list[index];
                          });
                        },
                        looping: false,
                        scrollController: _controller,
                      );
                    });
              },
            )
          ],
        ));
  }
}

final _text = '''
一个ios风格的选择器，
''';

final _code = '''CupertinoPicker({
  Key key,
  this.diameterRatio = _kDefaultDiameterRatio,//
  this.backgroundColor = _kDefaultBackground,//背景色
  this.offAxisFraction = 0.0,//选择器有一个弧度，正值向左，负值向右
  this.useMagnifier = false,//是否使用放大镜
  this.magnification = 1.0,//放大倍率，[useManifier]为true，选中项会变大
  this.scrollController,
  this.squeeze = _kSqueeze,//数值越大[children]靠得越紧
  @required this.itemExtent,//所有的子元素的平均高度
  @required this.onSelectedItemChanged,//选择后的回调
  @required List<Widget> children,//子widget们
  bool looping = false,//是否循环选择
})
''';
