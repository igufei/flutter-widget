import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Scaffold',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        height: 300,
        child: TestScaffold(),
      ),
    );
  }
}

class TestScaffold extends StatefulWidget {
  @override
  _TestScaffoldState createState() => _TestScaffoldState();
}

class _TestScaffoldState extends State<TestScaffold>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.amber,
          child: Text('title'),
        ),
        leading: Container(
          color: Colors.blue,
          child: Text('leadding'),
        ),
        actions: <Widget>[
          Container(
            color: Colors.deepOrange,
            child: Text('actions1'),
          ),
          Container(
            color: Colors.cyan,
            child: Text('actions2'),
          )
        ],
        flexibleSpace:Text('flexibleSpace'),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(child: Text('tab1')),
            Tab(child: Text('tab2')),
            Tab(child: Text('tab3'))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text('tab1'),
          Text('tab2'),
          Text('tab3'),
        ],
      ),
    );
  }
}

final _text =
    ''' 在Flutter Scaffold中给开发者提供了用于快速构建页面的常用属性，开发者可根据自己的页面需求，选择性的引入不同属性达到定制出不同UI呈现的目的''';

final _code = '''Scaffold({
    Key key,
    this.appBar,//标题栏，显示在界面顶部的一个 AppBar，也就是 Android 中的 ActionBar 、Toolbar
    this.body,//当前界面所显示的主要内容 Widget
    this.floatingActionButton,//悬浮按钮
    this.floatingActionButtonLocation,//悬浮按钮位置
    this.floatingActionButtonAnimator,//悬浮按钮动画
    this.persistentFooterButtons,//固定在下方显示的按钮，比如对话框下方的确定、取消按钮
    this.drawer,//侧滑菜单左
    this.endDrawer,//侧滑菜单右
    this.bottomNavigationBar,//底部导航
    this.bottomSheet,
    this.backgroundColor,//内容的背景颜色，默认使用的是 ThemeData.scaffoldBackgroundColor 的值
    this.resizeToAvoidBottomPadding,//类似于 Android 中的 android:windowSoftInputMode=”adjustResize”，控制界面内容 body 是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true。
    this.resizeToAvoidBottomInset,
    this.primary = true,//试用使用primary主色
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
  }) 
  
''';
