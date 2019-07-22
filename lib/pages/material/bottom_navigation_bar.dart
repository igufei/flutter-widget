import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class BottomNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'BottomNavigationBar',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        height: 450,
        child: MyScafflod(),
      ),
    );
  }
}

final _text = '''
一个底部导航栏
''';

final _code = '''BottomNavigationBar({
    Key key,
    @required this.items,//显示内容
    this.onTap,//点击后的回调
    this.currentIndex = 0,//当前选中的items index
    this.elevation = 8.0,//阴影
    BottomNavigationBarType type,//fixed:
    Color fixedColor,//
    this.backgroundColor,//背景颜色
    this.iconSize = 24.0,//icon大小
    Color selectedItemColor,//选中的Item颜色
    this.unselectedItemColor,//没有选中的Item颜色
    this.selectedFontSize = 14.0,//选中的字体大小
    this.unselectedFontSize = 12.0,//没有选中的字体大小
    this.showSelectedLabels = true,//选中时是否显示文字
    bool showUnselectedLabels,//没有选中时是否显示文字
  })

BottomNavigationBar的type分为：

1.BottomNavigationBarType.fixed:（代表tab固定不变，也是默认格式）
(1).底部tab数： 不超过4个
(2).导航栏背景色，默认由Material 控件的ThemeData.canvasColor决定，具体实现可以看下面代码
2.BottomNavigationBarType.shifting（代表tab是浮动的）
(1).底部tab数： 至少4个以上
(2).导航栏背景色，由每个item自己定义
''';

class MyScafflod extends StatefulWidget {
  @override
  _MyScafflodState createState() => _MyScafflodState();
}

class _MyScafflodState extends State<MyScafflod> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  final _bodyList = [
    Text('body1'),
    Text('body2'),
    Text('body3'),
    Text('body4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('item1'),
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            title: Text('item2'),
            icon: Icon(Icons.backup),
          ),
          BottomNavigationBarItem(
            title: Text('item3'),
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            title: Text('item4'),
            icon: Icon(Icons.cake),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return _bodyList[index];
        },
      ),
    );
  }
}
