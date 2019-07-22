import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoTabScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoTabScaffold',
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
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.ac_unit),
        title: Text('item1'),
        backgroundColor: Colors.blue,
        activeIcon: Icon(
          Icons.ac_unit,
          color: Colors.amberAccent,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.backup),
        title: Text('item2'),
        backgroundColor: Colors.blue,
        activeIcon: Icon(
          Icons.backup,
          color: Colors.blueAccent,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.cached),
        title: Text('item3'),
        //backgroundColor: Colors.cyan,
        activeIcon: Icon(
          Icons.cached,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.dashboard),
        title: Text('item4'),
        backgroundColor: Colors.deepOrange,
        activeIcon: Icon(
          Icons.dashboard,
          color: Colors.deepOrangeAccent,
        )),
  ];
  int _currtentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset:false,
        tabBar: CupertinoTabBar(
          
          items: _items,
          currentIndex: _currtentIndex,
          onTap: (index) {
            setState(() {
              _currtentIndex = index;
            });
          },
          backgroundColor: Colors.green[300],
          activeColor: Colors.red,
          inactiveColor: Colors.tealAccent,
          border: Border(
            //
            top: BorderSide(
              color: Colors.yellow,
              width: 1, // One physical pixel.
              style: BorderStyle.solid,
            ),
          ),
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return Text('tabView1');
                  break;
                case 1:
                  return Text('tabView2');
                  break;
                case 2:
                  return Text('tabView3');
                  break;
                case 3:
                  return Text('tabView4');
                  break;
                default:
                  return Container();
              }
            },
          );
        },
      ),
    );
  }
}

final _text = '''为底部带有选项卡栏的应用程序创建布局。
[tabBar]和[tabBuilder]参数不能为空
''';

final _code = '''
CupertinoTabScaffold({
  Key key,
  @required this.tabBar,//选项卡栏
  @required this.tabBuilder,//选项卡栏项构建器
  this.controller,//控件器
  this.backgroundColor,//背景颜色
  this.resizeToAvoidBottomInset = true,//
})
''';
