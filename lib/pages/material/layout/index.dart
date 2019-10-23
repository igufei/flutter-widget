import 'package:flutter_widget/pages/basic_widget/column.dart';
import 'package:flutter_widget/pages/basic_widget/row.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/custom_multi_child_layout.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/flow.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/indexed_stack.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/list_body.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/list_view.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/stack.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/table.dart';
import 'package:flutter_widget/pages/material/layout/multiple_children/wrap.dart';
import 'package:flutter_widget/pages/material/layout/single_child/align.dart';
import 'package:flutter_widget/pages/material/layout/single_child/aspect_ratio.dart';
import 'package:flutter_widget/pages/material/layout/single_child/base_line.dart';
import 'package:flutter_widget/pages/material/layout/single_child/center.dart';
import 'package:flutter_widget/pages/material/layout/single_child/constrained_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/container.dart';
import 'package:flutter_widget/pages/material/layout/single_child/custom_single_child_layout.dart';
import 'package:flutter_widget/pages/material/layout/single_child/fitted_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/fractionally_sized_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/intrinsic_height.dart';
import 'package:flutter_widget/pages/material/layout/single_child/intrinsic_width.dart';
import 'package:flutter_widget/pages/material/layout/single_child/limited_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/offstage.dart';
import 'package:flutter_widget/pages/material/layout/single_child/overflow_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/padding.dart';
import 'package:flutter_widget/pages/material/layout/single_child/sized_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/sized_overflow_box.dart';
import 'package:flutter_widget/pages/material/layout/single_child/transform.dart';
import 'package:flutter_widget/widget/widget.dart';

final layoutWidgetDatas = [
  //**************对单个widget进行布局**************** */
  MyListTile(
    title: 'Align',
    subtitle: '控制子widget对齐方式',
    page: AlignPage(),
  ),
  MyListTile(
    title: 'AspectRatio',
    subtitle: '将子widget的大小指定为特定的长宽比',
    page: AspectRatioPage(),
  ),
  MyListTile(
    title: 'Baseline',
    subtitle: '将子widget的基线对它们的位置进行定位',
    page: BaselinePage(),
  ),
  MyListTile(
    title: 'Center',
    subtitle: '将其子widget居中显示在自身内部',
    page: CenterPage(),
  ),
  MyListTile(
    title: 'ConstrainedBox',
    subtitle: '对其子部件施加附加约束。',
    page: ConstrainedBoxPage(),
  ),
  MyListTile(
    title: 'Container',
    subtitle: '一个拥有绘制、定位、调整大小的 widget',
    page: ContainerPage(),
  ),
  MyListTile(
    title: 'CustomSingleChildLayout',
    subtitle: '一个自定义的拥有单个子widget的布局widget',
    page: CustomSingleChildLayoutPage(),
  ),
  MyListTile(
    title: 'FittedBox',
    subtitle: '按自己的大小调整其子widget的大小和位置',
    page: FittedBoxPage(),
  ),
  MyListTile(
    title: 'FractionallySizedBox',
    subtitle: '把它的子项放在可用空间的一小部分',
    page: FractionallySizedBoxPage(),
  ),
  MyListTile(
    title: 'IntrinsicHeight',
    subtitle: '将它的子widget的高度调整其自身的高度',
    page: IntrinsicHeightPage(),
  ),
  MyListTile(
    title: 'IntrinsicWidth',
    subtitle: '将它的子widget的宽度调整其自身宽度',
    page: IntrinsicWidthPage(),
  ),
  MyListTile(
    title: 'LimitedBox',
    subtitle: '一个当其自身不受约束时才限制其大小的盒子',
    page: LimitedBoxPage(),
  ),
  MyListTile(
    title: 'Offstage',
    subtitle: '可以控制其子widget的显示和隐藏',
    page: OffstagePage(),
  ),
  MyListTile(
    title: 'OverflowBox',
    subtitle: '对其子项施加不同约束的widge',
    page: OverflowBoxPage(),
  ),
  MyListTile(
    title: 'Padding',
    subtitle: '会给其子widget添加指定的填充',
    page: PaddingPage(),
  ),
  MyListTile(
    title: 'SizedBox',
    subtitle: '一个特定大小的盒子',
    page: SizedBoxPage(),
  ),
  MyListTile(
    title: 'SizedOverflowBox',
    subtitle: '特定大小的widget,会将自身约束传递给child',
    page: SizedOverflowBoxPage(),
  ),
  MyListTile(
    title: 'Transform',
    subtitle: '可以为变形子widget',
    page: TransformPage(),
  ),
  //************对多个子widget布局************** */
  MyListTile(
    title: 'Column',
    subtitle: '在垂直方向上排列子widget的列表',
    page: ColumnPage(),
  ),
  MyListTile(
    title: 'CustomMultiChildLayout',
    subtitle: '对多个child进行设置大小和定位',
    page: CustomMultiChildLayoutPage(),
  ),
  MyListTile(
    title: 'FlowPage',
    subtitle: '实现流式布局算法的widget',
    page: FlowPage(),
  ),
  MyListTile(
    title: 'IndexedStack',
    subtitle: '从子widget列表中显示单个孩子的Stack',
    page: IndexedStackPage(),
  ),
  MyListTile(
    title: 'ListBody',
    subtitle: '沿着一个轴，顺序排列它的子元素',
    page: ListBodyPage(),
  ),
  MyListTile(
    title: 'ListView',
    subtitle: '可滚动的列表控件',
    page: ListViewPage(),
  ),
  MyListTile(
    title: 'Row',
    subtitle: '在水平方向上排列子widget的列表',
    page: RowPage(),
  ),
  MyListTile(
    title: 'Table',
    subtitle: '为其子widget使用表格布局算法的widget',
    page: TablePage(),
  ),
  MyListTile(
    title: 'Stack',
    subtitle: '允许其子widget简单的堆叠在一起',
    page: StackPage(),
  ),
  MyListTile(
    title: 'Wrap',
    subtitle: '在水平或垂直方向多行显示其子widget',
    page: WrapPage(),
  ),
];
