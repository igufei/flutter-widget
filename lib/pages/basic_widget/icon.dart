import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'Icons',
      text: _text,
      code: _code,
      example: Container(
        child: Column(
          children: <Widget>[
            Icon(Icons.today),
            Text('默认Icon'),
            Divider(),
            Icon(
              Icons.transfer_within_a_station,
              size: 50,
            ),
            Text('设置size为50'),
            Divider(),
            Icon(
              Icons.zoom_in,
              color: Colors.red,
            ),
            Text('颜色设置成red'),
          ],
        ),
      ),
    );
  }
}

final _text = '''Flutter默认包含了一套Material Design的字体图标;
 在pubspec.yaml文件中
 flutter:
  uses-material-design: true

当然开发者也可以使用自己生成的字体图标
作者就在项目首页使用了自己生成的字体图标
我是在https://www.iconfont.cn/上
1.把选择的图标添加入库，
2.在网页右上角购物车里点击"添加至项目"
3.最后选择"Unicode"=>"下载至本地"
4.把下载到的ttf文件添加到目录目录里
5.把下面代码加入pubspec.yaml文件中
fonts:
  - family: iconfont
    fonts:
    - asset: assets/fonts/iconfont.ttf
6.IconData(0xe64b,fontFamily: 'iconfont')
  '0xe64b'是icon的unicode值（iconfont网站有对应的值，可以复制过来），'iconfont'是在pubspec.yaml中设置的字体名称
  ''';

final _code = '''Icon(
    this.icon, {
    Key key,
    this.size,//尺寸
    this.color,//颜色
    this.semanticLabel,//没有使用过
    this.textDirection,//图标显示的方向
  }) ''';
