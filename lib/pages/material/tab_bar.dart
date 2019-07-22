import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'TabBar',
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
一个material design选项卡栏。

[tabs]参数不能为null，其长度必须与[controller]的[TabController.length]匹配。

如果没有提供[TabController]，则必须有[DefaultTabController]祖先。

[indicatorWeight]参数默认为2，且不能为null。

[indicatorPadding]参数默认为[EdgeInsets.zero]，且不能为null。

如果[indicator]不为空，则忽略[indicatorWeight]，[indicatorPadding]和[indicatorColor]。
''';

final _code = '''
TabBar({
    Key key,
    @required this.tabs,
    this.controller,//控制器
    this.isScrollable = false,//tab是否水平滚动
    this.indicatorColor,//指示器颜色
    this.indicatorWeight = 2.0,//指示器厚度
    this.indicatorPadding = EdgeInsets.zero,//指示器的内边距
    this.indicator,//定义所选选项卡指示器的外观
    this.indicatorSize,//TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
    this.labelColor,//文本颜色
    this.labelStyle,//文本样式
    this.labelPadding,//文本内边距
    this.unselectedLabelColor,//没有选中文本颜色
    this.unselectedLabelStyle,//没有选中文本样式
    this.dragStartBehavior = DragStartBehavior.start,//拖动行为
    this.onTap,//点击回调
  })
''';