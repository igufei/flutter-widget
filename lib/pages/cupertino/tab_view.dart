import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoTabViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoTabView',
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

final _text = '''在[CupertinoTabScaffold]中为选项卡创建内容区域。
''';

final _code = '''
CupertinoTabView({
  Key key,
  this.builder,//页面构建器
  this.navigatorKey,//在构建此小部件的[导航器]时使用的键。
  this.defaultTitle,//默认路由的标题
  this.routes,//此选项卡视图的路由表。
  this.onGenerateRoute,//将选项卡视图导航到指定路由时使用的路由生成器回调。
  this.onUnknownRoute,//当[onGenerateRoute]也不能生成路由时调用。
  this.navigatorObservers = const <NavigatorObserver>[],//在此选项卡视图中创建的[Navigator]的观察者列表。
}) 
''';
