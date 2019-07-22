import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class OverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'OverflowBox',
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
      child: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}

final _text = '''''';

final _code = '''
''';