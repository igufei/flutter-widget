import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class OffstagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Offstage',
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
  var _isHidden = false;
  var _btnText = "隐藏";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Offstage(
            child: Text(
              '这是一段文件，你可以通过下面的按钮来隐藏|显示它！',
            ),
            offstage: _isHidden,
          ),
          Divider(),
          RaisedButton(
            child: Text(_btnText),
            onPressed: () {
              setState(() {
                this._isHidden = !this._isHidden;
                this._btnText = this._isHidden?"显示":"隐藏";
              });
            },
          )
        ],
      ),
    );
  }
}

final _text = '''''';

final _code = '''Offstage({
  Key key, 
  this.offstage = true, //true:显示|false:隐藏
  Widget child// 子widget
})
''';
