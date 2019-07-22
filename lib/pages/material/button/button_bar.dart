import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class ButtonBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'AppBar',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('1'),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('2'),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('3'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final _text = '''
一个水平排列的按钮组，应该就是用Row进行了一次简单的封装
''';

final _code = '''ButtonBar({
    Key key,
    this.alignment = MainAxisAlignment.end,//子widget靠右对齐
    this.mainAxisSize = MainAxisSize.max,
    this.children = const <Widget>[],//子widget列表
  }) 
''';
