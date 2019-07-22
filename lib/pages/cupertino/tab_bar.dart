import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoTabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoTabBar',
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

final _text = '''创建iOS风格的选项卡栏。
''';

final _code = '''CupertinoTabBar({
  Key key,
  @required this.items,//列表
  this.onTap,//点击回调
  this.currentIndex = 0,//当前列表项下标
  this.backgroundColor,//背景颜色
  this.activeColor,//活动项颜色
  this.inactiveColor = CupertinoColors.inactiveGray,//前景颜色，作用于没有被选中的[icon][title]
  this.iconSize = 30.0,//icon大小
  this.border = const Border(//
    top: BorderSide(
      color: _kDefaultTabBarBorderColor,
      width: 0.0, // One physical pixel.
      style: BorderStyle.solid,
    ),
  ),
}) 

创建与[BottomNavigationBar.items]一起使用的项。
参数[icon]不应该为空，参数[title]不应该为空，当使用在一个材料设计的[BottomNavigationBar]
BottomNavigationBarItem({
  @required this.icon,//图标
  this.title,//标题
  Widget activeIcon,//活动时图标
  this.backgroundColor,//背景颜色
})
''';
