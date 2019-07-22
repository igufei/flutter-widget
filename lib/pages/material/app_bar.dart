import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'AppBar',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        child: AppBar(
          title: Text('这是一个appbar'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.deepOrange,
        ),
      ),
    );
  }
}

final _text = '''
AppBar是一个顶端栏,
''';

final _code = '''AppBar({
    Key key,
    this.leading,//左侧Widget放置的地方，通常放置一个IconButton,
    this.automaticallyImplyLeading = true,
    this.title,//标题
    this.actions,//右侧widget数组，通常放置按钮
    this.flexibleSpace,//一个显示在 AppBar 下方的控件，高度和 AppBar 高度一样，可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用。
    this.bottom,//appbar底部位置，通常放置tabbar
    this.elevation,//阴影
    this.shape,//形状
    this.backgroundColor,//背景颜色
    this.brightness,//状态栏的亮度
    this.iconTheme,//左侧Icon的样式
    this.actionsIconTheme,//右侧Icon样式
    this.textTheme,//文本样式 
    this.primary = true,//
    this.centerTitle,//是否居中标题
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,//
    this.toolbarOpacity = 1.0,//整个导航栏的不透明度
    this.bottomOpacity = 1.0,//bottom的不透明度
  })
''';
