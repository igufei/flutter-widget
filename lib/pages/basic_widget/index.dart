import 'package:flutter_widget/pages/basic_widget/column.dart';
import 'package:flutter_widget/pages/basic_widget/icon.dart';
import 'package:flutter_widget/pages/basic_widget/image.dart';
import 'package:flutter_widget/pages/basic_widget/row.dart';
import 'package:flutter_widget/pages/basic_widget/scaffold.dart';
import 'package:flutter_widget/pages/basic_widget/text.dart';
import 'package:flutter_widget/pages/material/button/raised_button.dart';
import 'package:flutter_widget/pages/material/layout/single_child/container.dart';
import 'package:flutter_widget/widget/widget.dart';

final basicWidgetDatas = [
  MyListTile(
    title: 'Container',
    subtitle: '拥有绘制、定位、调整大小的Widget。',
    page: ContainerPage(),
  ),
  MyListTile(
    title: 'Row',
    subtitle: '可以在水平方向排列布局多个子Widget。',
    page: RowPage(),
  ),
  MyListTile(
    title: 'Column',
    subtitle: '可以在垂直方向排列布局多个子widget。',
    page: ColumnPage(),
  ),
  MyListTile(
    title: 'Image',
    subtitle: '显示图片的Widget',
    page: ImagePage(),
  ),
  MyListTile(
    title: 'Text',
    subtitle: '显示文本的Widget。',
    page: TextPage(),
  ),
  MyListTile(
    title: 'Icon',
    subtitle: 'Material Design风格的Icon.',
    page: IconPage(),
  ),
  MyListTile(
    title: 'RaisedButton',
    subtitle: 'Material Design风格的凸起的矩形按钮',
    page: RaisedButtonPage(),
  ),
  MyListTile(
    title: 'Scaffold',
    subtitle: 'Material Design风格的UI布局结构。',
    page: ScaffoldPage(),
  ),
];
