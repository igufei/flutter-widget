import 'package:flutter_widget/pages/cupertino/action_sheet.dart';
import 'package:flutter_widget/pages/cupertino/activity_indicator.dart';
import 'package:flutter_widget/pages/cupertino/alert_dialog.dart';
import 'package:flutter_widget/pages/cupertino/app.dart';
import 'package:flutter_widget/pages/cupertino/button.dart';
import 'package:flutter_widget/pages/cupertino/dialog_action.dart';
import 'package:flutter_widget/pages/cupertino/fullscreen_dialog_transition.dart';
import 'package:flutter_widget/pages/cupertino/navigation_bar.dart';
import 'package:flutter_widget/pages/cupertino/page_scaffold.dart';
import 'package:flutter_widget/pages/cupertino/picker.dart';
import 'package:flutter_widget/pages/cupertino/scrollbar.dart';
import 'package:flutter_widget/pages/cupertino/slider.dart';
import 'package:flutter_widget/pages/cupertino/switch.dart';
import 'package:flutter_widget/pages/cupertino/tab_bar.dart';
import 'package:flutter_widget/pages/cupertino/tab_scaffold.dart';
import 'package:flutter_widget/pages/cupertino/tab_view.dart';
import 'package:flutter_widget/pages/cupertino/text_field.dart';
import 'package:flutter_widget/widget/widget.dart';

final cupertinoWidgetDatas = [
  MyListTile(
    title: 'CupertinoAPP',
    subtitle: '一个使用Cupertino设计的应用程序',
    page: CupertinoAppPage(),
  ),
  MyListTile(
    title: 'CupertinoActivityIndicator',
    subtitle: '一个iOS风格的loading指示器',
    page: CupertinoActivityIndicatorPage(),
  ),
  MyListTile(
    title: 'CupertinoAlertDialog',
    subtitle: 'iOS风格的alert dialog.',
    page: CupertinoAlertDialogPage(),
  ),
  MyListTile(
    title: 'CupertinoButton',
    subtitle: 'iOS风格的button.',
    page: CupertinoButtonPage(),
  ),
  MyListTile(
    title: 'CupertinoDialogAction',
    subtitle: '通常用于CupertinoAlertDialog的一个button',
    page: CupertinoDialogActionPage(),
  ),
  MyListTile(
    title: 'CupertinoSlider',
    subtitle: '从一个范围中选一个值.',
    page: CupertinoSliderPage(),
  ),
  MyListTile(
    title: 'CupertinoSwitch',
    subtitle: 'iOS风格的开关',
    page: CupertinoSwitchPage(),
  ),
  MyListTile(
    title: 'CupertinoFullscreenDialogTransition',
    subtitle: '一个iOS风格的过渡，用于调用全屏对话',
    page: CupertinoFullscreenDialogTransitionPage(),
  ),
  MyListTile(
    title: 'CupertinoNavigationBar',
    subtitle: 'iOS风格的导航栏',
    page: CupertinoNavigationBarPage(),
  ),
  MyListTile(
    title: 'CupertinoTabBar',
    subtitle: 'iOS风格的底部选项卡',
    page: CupertinoTabBarPage(),
  ),
  MyListTile(
    title: 'CupertinoPageScaffold',
    subtitle: 'iOS风格的页面的基本布局结构',
    page: CupertinoPageScaffoldPage(),
  ),
  MyListTile(
    title: 'CupertinoTabScaffold',
    subtitle: '标签式iOS应用程序的结构',
    page: CupertinoTabScaffoldPage(),
  ),
  MyListTile(
    title: 'CupertinoTabView',
    subtitle: '支持选项卡间并行导航项卡的根内容',
    page: CupertinoTabViewPage(),
  ),
  MyListTile(
    title: 'CupertinoActionSheet',
    subtitle: '一个ios风格的动作表单',
    page: CupertinoActionSheetPage(),
  ),
  MyListTile(
    title: 'CupertinoScrollbar',
    subtitle: '一个iOS风格的滚动条',
    page: CupertinoScrollbarPage(),
  ),
  MyListTile(
    title: 'CupertinoPicker',
    subtitle: '自定义一个ios风格的选择器。',
    page: CupertinoPickerPage(),
  ),
  MyListTile(
    title: 'CupertinoTextField',
    subtitle: '创建一个ios样式的文本输入框',
    page: CupertinoTextFieldPage(),
  ),

];
