import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Drawer',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        height: 400,
        child: TestScaffold(),
      ),
    );
  }
}

class TestScaffold extends StatefulWidget {
  @override
  _TestScaffoldState createState() => _TestScaffoldState();
}

class _TestScaffoldState extends State<TestScaffold> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试Drawer'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('试着从左边往右边滑动'),
      ),
      drawer: Drawer(
        semanticLabel: 'semanticLabel',
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '这是DrawerHeader Widget',
                  style: TextStyle(color: Colors.black26),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'http://pic40.nipic.com/20140331/9469669_142840860000_2.jpg',
                    ),
                  ),
                ),
              ),
            ),
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'http://pic35.nipic.com/20131115/13972544_160943053001_2.jpg',
                  ),
                ),
              ),
              accountEmail: Text('igufei@QQ.com'),
              accountName: Text('IGF'),
              currentAccountPicture: ClipOval(
                child: Image.network(
                    'https://b-ssl.duitang.com/uploads/item/201804/29/20180429111927_4i2Ks.thumb.700_0.jpeg'),
              ),
              otherAccountsPictures: <Widget>[
                ClipOval(
                  child: Image.network(
                      'http://b-ssl.duitang.com/uploads/item/201804/05/20180405231200_exhbj.thumb.700_0.jpg'),
                ),
                ClipOval(
                  child: Image.network(
                      'http://b-ssl.duitang.com/uploads/item/201505/03/20150503152056_k4MiF.thumb.700_0.jpeg'),
                ),
              ],
              onDetailsPressed: () {},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Email'),
              subtitle: Text('查看Email'),
              trailing: Icon(Icons.chevron_right),
              dense: true,
              onTap: () {},
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.cloud_upload),
              title: Text('上传'),
              subtitle: Text('上传数据'),
              trailing: Icon(Icons.chevron_right),
              dense: true,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

final _text = '''可以从左右边缘滑出来的抽屉式的widget''';

final _code = ''' Drawer({
    Key key,
    this.elevation = 16.0,//阴影
    this.child,//子widget
    this.semanticLabel,
  })

  DrawerHeader({
    Key key,
    this.decoration,//widget装饰
    this.margin = const EdgeInsets.only(bottom: 8.0),
    this.padding = const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
    this.duration = const Duration(milliseconds: 250),//装饰动画的持续时间。
    this.curve = Curves.fastOutSlowIn,
    @required this.child,
  })

  UserAccountsDrawerHeader({
    Key key,
    this.decoration,//widget 装饰
    this.margin = const EdgeInsets.only(bottom: 8.0),
    this.currentAccountPicture,//用户头像
    this.otherAccountsPictures,//显示在右边的小头像，可以显示多个
    @required this.accountName,//用户名称
    @required this.accountEmail,//用户email
    this.onDetailsPressed,//下击右下角的小箭头，触发这个回调函数
  }

  ListTile({
    Key key,
    this.leading,//显示在左边的widget，一般是icon
    this.title,//显示在中间的标题
    this.subtitle,//显示在标题下面的副标题
    this.trailing,//显示在右边的widget。
    this.isThreeLine = false,//是否显示三行文本，如果为true,[subtitle]必须不能为null
    this.dense,//可以让它变小一点
    this.contentPadding,//内容内边距
    this.enabled = true,//是否可以选中
    this.onTap,//点击回调
    this.onLongPress,//长按回调，
    this.selected = false,//是否是选中的
  }) 
''';
