import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoScrollbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoScrollbar',
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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 400,
      child: CupertinoScrollbar(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
            ListTile(
              title: Text('aaaaa'),
            ),
          ],
        ),
      ),
    );
  }
}

final _text = '''给[child]包装一个iOS风格的滚动条，滚动时会显示，否则会隐藏。
[child]应该是[ScrollNotification]通知的一个源，通常是[Scrollable]小部件。
''';

final _code = '''CupertinoScrollbar({
  Key key,
  @required this.child,
})
''';
