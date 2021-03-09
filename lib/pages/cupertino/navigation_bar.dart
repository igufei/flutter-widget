import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoNavigationBar',
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
          CupertinoNavigationBar(
            leading: CupertinoNavigationBarBackButton(
              color: Colors.amberAccent,
              previousPageTitle: '退后',
            ),
            previousPageTitle: '退后',
            middle: Text('ios风格的导航栏'),
            automaticallyImplyMiddle: false,
            trailing: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            //border: Border(bottom: BorderSide(color: Colors.red)),
            //backgroundColor: Colors.red,
            //padding: EdgeInsetsDirectional.only(start: 20,end: 20,),
            //actionsForegroundColor: Colors.blue,
            transitionBetweenRoutes: false,
          )
        ],
      ),
    );
  }
}

final _text = '''创建iOS风格的导航栏。
''';

final _code = '''
CupertinoNavigationBar({
  Key key,
  this.leading,//显示在最左边的widget,一般是图标按钮
  this.automaticallyImplyLeading = true,//如果leading没有设置，true就会自动放置一个
  this.automaticallyImplyMiddle = true,//
  this.previousPageTitle,//在[leading]后面的文本，效果和[leading]一样只不过这里是yysg
  this.middle,//显示在导航栏中间部分的widget
  this.trailing,//显示在最右边的widget，一般是图标按钮
  this.border = _kDefaultNavBarBorder,//边框样式，
  this.backgroundColor,//背景颜色
  this.padding,//内边距
  this.actionsForegroundColor,//前景颜色，测试后会改变[leading][trailing]颜色
  this.transitionBetweenRoutes = true,//是否在导航栏之间切换
  this.heroTag = _defaultHeroTag,//使用默认的就好
}) 
''';
