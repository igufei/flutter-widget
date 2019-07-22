import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class TabBarViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'TabBarView',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        height: 350,
        child: Testscaffold(),
      ),
    );
  }
}


class Testscaffold extends StatefulWidget {
  @override
  _TestscaffoldState createState() => _TestscaffoldState();
}

class _TestscaffoldState extends State<Testscaffold>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    this._tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 5,
          indicatorPadding: EdgeInsets.all(5),
          labelColor: Colors.red,
          labelStyle: TextStyle(fontSize: 18),
          labelPadding: EdgeInsets.all(10),
          unselectedLabelColor: Colors.white70,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          dragStartBehavior:DragStartBehavior.down ,
          tabs: <Widget>[
            Tab(text:'tab1'),
            Tab(text:'tab2'),
            Tab(text:'tab3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text('这是tab1'),
          Text('这是tab2'),
          Text('这是tab3'),
        ],
      ),
    );
  }
}

final _text = '''
为每个tabbar创建一个视图

[children]的长度必须与[controller]的长度相同。''';

final _code = '''
TabBarView({
    Key key,
    @required this.children,
    this.controller,//控制器
    this.physics,//页面视图如何响应用户操作，例如，在用户停止拖动页面视图后页面视图如何继续动画。
    this.dragStartBehavior = DragStartBehavior.start,//处理拖动行为的方式。
  })
''';