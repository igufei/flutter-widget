import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoPageScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoPageScaffold',
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
      height: 400,
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: '退后',
          middle: Text('ios风格的导航栏'),
          automaticallyImplyMiddle: false,
          trailing: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          //actionsForegroundColor: Colors.blue,
          transitionBetweenRoutes: false,
        ),
        //backgroundColor: Colors.yellowAccent,
        child: Center(
          child: Text(
            "CupertinoPageScaffold页面",
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

final _text = '''
''';

final _code = '''CupertinoPageScaffold({
  Key key,
  this.navigationBar,//顶部导航栏
  this.backgroundColor,//背景颜色
  this.resizeToAvoidBottomInset = true,
  @required this.child,//子widget
}) 

''';
