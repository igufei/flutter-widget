import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class ExpansionPanelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'ExpansionPanel',
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

class _TestState extends State<Test> with TickerProviderStateMixin {
  int _index = 0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (index, isExpanded) {
        setState(() {
          _index = index;
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, b) {
            return ListTile(
              title: Text('Item1'),
            );
          },
          body: Container(
            color: Colors.red,
            height: 100,
            width: double.infinity,
            child: Text('Item1'),
            alignment: Alignment.center,
          ),
          isExpanded: _index == 0 ? _isExpanded : false,
        ),
        ExpansionPanel(
          headerBuilder: (context, b) {
            return ListTile(
              title: Text('Item2'),
            );
          },
          body: Container(
            color: Colors.yellow,
            height: 100,
            width: double.infinity,
            child: Text('Item2'),
            alignment: Alignment.center,
          ),
          isExpanded: _index == 1 ? _isExpanded : false,
        ),
        ExpansionPanel(
          headerBuilder: (context, b) {
            return ListTile(
              title: Text('Item3'),
            );
          },
          body: Container(
            color: Colors.blue,
            height: 100,
            width: double.infinity,
            child: Text('Item3'),
            alignment: Alignment.center,
          ),
          isExpanded: _index == 2 ? _isExpanded : false,
        ),
      ],
    );
  }
}

final _text = '''
ExpansionPanelList
  创建一个扩展面板列表widget。
  当按下扩展面板的展开/折叠按钮时触发[expancallback]。
  [children]和[animationDuration]参数不能为空。

ExpansionPanel
  创建一个扩展面板widget，作为[ExpansionPanelList]的子面板使用。
  [headerBuilder]、[body]和[isExpanded]参数不能为空。
''';

final _code = '''
ExpansionPanel({
  @required this.headerBuilder,//扩展面板头部widget，
  @required this.body,//显示在[headerBuilder]下面的主体widget（需要开发者自行构建）,只有在[isExpanded]为true时才可见
  this.isExpanded = false,//控制[body]是否可见
  this.canTapOnHeader = false,//是否允许点击[headerBuilder]构建的widget来触发回调，否则只能点击右边的下尖头IconButton
})

ExpansionPanelList({
  Key key,
  this.children = const <ExpansionPanel>[],//
  this.expansionCallback,//
  this.animationDuration = kThemeAnimationDuration,//
})
''';
