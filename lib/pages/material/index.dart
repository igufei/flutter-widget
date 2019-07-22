import 'package:flutter_widget/pages/basic_widget/icon.dart';
import 'package:flutter_widget/pages/basic_widget/image.dart';
import 'package:flutter_widget/pages/material/app_bar.dart';
import 'package:flutter_widget/pages/material/bottom_navigation_bar.dart';
import 'package:flutter_widget/pages/material/button/button_bar.dart';
import 'package:flutter_widget/pages/material/button/floating_action_button.dart';
import 'package:flutter_widget/pages/material/button/raised_button.dart';
import 'package:flutter_widget/pages/material/dialog/alert_dialog.dart';
import 'package:flutter_widget/pages/material/dialog/bottom_sheet.dart';
import 'package:flutter_widget/pages/material/dialog/expansin_panel.dart';
import 'package:flutter_widget/pages/material/dialog/simple_dialog.dart';
import 'package:flutter_widget/pages/material/dialog/snack_bar.dart';
import 'package:flutter_widget/pages/material/drawer.dart';
import 'package:flutter_widget/pages/material/button/flat_button.dart';
import 'package:flutter_widget/pages/material/button/icon_button.dart';
import 'package:flutter_widget/pages/material/info_show/card.dart';
import 'package:flutter_widget/pages/material/info_show/chip.dart';
import 'package:flutter_widget/pages/material/info_show/data_table.dart';
import 'package:flutter_widget/pages/material/info_show/linear_progress_Indicator.dart';
import 'package:flutter_widget/pages/material/info_show/tooltip.dart';
import 'package:flutter_widget/pages/material/input/checkbox.dart';
import 'package:flutter_widget/pages/material/input/radio.dart';
import 'package:flutter_widget/pages/material/input/slider.dart';
import 'package:flutter_widget/pages/material/input/switch.dart';
import 'package:flutter_widget/pages/material/input/text_field.dart';
import 'package:flutter_widget/pages/material/input/time_pickers.dart';
import 'package:flutter_widget/pages/material/layout/divider.dart';
import 'package:flutter_widget/pages/material/layout/list_tile.dart';
import 'package:flutter_widget/pages/material/layout/stepper.dart';
import 'package:flutter_widget/pages/material/material_app.dart';
import 'package:flutter_widget/pages/material/button/popup_menu_button.dart';
import 'package:flutter_widget/pages/material/tab_bar.dart';
import 'package:flutter_widget/pages/material/tab_bar_view.dart';
import 'package:flutter_widget/widget/widget.dart';
import 'package:flutter_widget/pages/basic_widget/scaffold.dart';

final materialWidgetDatas = [
  MyListTile(
    title: 'Scaffold',
    subtitle: 'Material Design风格的UI布局结构。',
    page: ScaffoldPage(),
  ),
  MyListTile(
    title: 'Appbar',
    subtitle: '一个Material Design应用程序栏。',
    page: AppBarPage(),
  ),
  MyListTile(
    title: 'BottomNavigationBar',
    subtitle: '底部导航条。',
    page: BottomNavigationBarPage(),
  ),
  MyListTile(
    title: 'TabBar',
    subtitle: '一个显示水平选项卡。',
    page: TabBarPage(),
  ),
  MyListTile(
    title: 'TabBarView',
    subtitle: '通常和TabBar一起使用,为TabBar创建对应的视图。',
    page: TabBarViewPage(),
  ),
  MyListTile(
    title: 'MaterialApp',
    subtitle: '它封装了Material Design一些widget。',
    page: MaterialAppPage(),
  ),
  MyListTile(
    title: 'Drawer',
    subtitle: '从Scaffold边缘滑出来的Widget',
    page: DrawerPage(),
  ),
  //*****************button*************** */
  MyListTile(
    title: 'RaisedButton',
    subtitle: 'Material Design中的button， 一个凸起的矩形按钮',
    page: RaisedButtonPage(),
  ),
  MyListTile(
    title: 'FloatingActionButton',
    subtitle: '一个圆形图标按钮，它悬停在内容之上。',
    page: FloatingActionButtonPage(),
  ),
  MyListTile(
    title: 'FlatButton',
    subtitle: '一个扁平的没有边框的按钮。',
    page: FlatButtonPage(),
  ),
  MyListTile(
    title: 'IconButton',
    subtitle: '一个图标按钮。',
    page: IconButtonPage(),
  ),
  MyListTile(
    title: 'PopupMenuButton',
    subtitle: '点击后会弹出一个菜单列表。',
    page: PopupMenuButtonPage(),
  ),
  MyListTile(
    title: 'ButtonBar',
    subtitle: '水平排列的按钮组',
    page: ButtonBarPage(),
  ),
  //******************input********** */
  MyListTile(
    title: 'TextField',
    subtitle: '文本输入框',
    page: TextFieldPage(),
  ),
  MyListTile(
    title: 'Checkbox',
    subtitle: '复选框，允许用户从一组中选择多个选项。',
    page: CheckboxPage(),
  ),
  MyListTile(
    title: 'Radio',
    subtitle: '单选框，允许用户从一组中选择一个选项。',
    page: RadioPage(),
  ),
  MyListTile(
    title: 'Switch',
    subtitle: 'On/off 用于切换一个单一状态',
    page: SwitchPage(),
  ),
  MyListTile(
    title: 'Slider',
    subtitle: '滑块，允许用户通过滑动滑块来从一系列值中选择。',
    page: SliderPage(),
  ),
  MyListTile(
    title: 'Date & Time Pickers',
    subtitle: '日期&时间选择器',
    page: DateTimePickersPage(),
  ),
  //************** 对话框、Alert、Panel*/
  MyListTile(
    title: 'SimpleDialog',
    subtitle: '简单对话框可以显示附加的提示或操作',
    page: SimpleDialogPage(),
  ),
  MyListTile(
    title: 'AlertDialog',
    subtitle: '一个会中断用户操作的对话款，需要用户确认。',
    page: AlertDialogPage(),
  ),
  MyListTile(
    title: 'BottomSheet',
    subtitle: 'BottomSheet是一个从屏幕底部滑起的列表',
    page: BottomSheetPage(),
  ),
  MyListTile(
    title: 'ExpansionPanel',
    subtitle: '可以提供一个扩展空间的widget',
    page: ExpansionPanelPage(),
  ),
  MyListTile(
    title: 'SnackBar',
    subtitle: '可以显示一条消息，浮动布局在页面底部',
    page: SnackBarPage(),
  ),
  //************信息显示**************/
  MyListTile(
    title: 'Image',
    subtitle: '一个显示图片的widget',
    page: ImagePage(),
  ),
  MyListTile(
    title: 'Icon',
    subtitle: '一个Material Design风格的图标。',
    page: IconPage(),
  ),
  MyListTile(
    title: 'Chip',
    subtitle: '它可以将一个复杂内容实体展现在一个小块中。',
    page: ChipPage(),
  ),
  MyListTile(
    title: 'Tooltip',
    subtitle: '一个文本提示工具',
    page: TooltipPage(),
  ),
  MyListTile(
    title: 'DataTable',
    subtitle: '数据表显示原始数据集。',
    page: DataTablePage(),
  ),
  MyListTile(
    title: 'Card',
    subtitle: '一个 Material Design 卡片。拥有一个圆角和阴影',
    page: CardPage(),
  ),
  MyListTile(
    title: 'LinearProgressIndicator',
    subtitle: '一个线性进度条',
    page: LinearProgressIndicatorPage(),
  ),
  //**********layout************* */
  MyListTile(
    title: 'ListTile',
    subtitle: '有固定高度的行',
    page: ListTilePage(),
  ),
  MyListTile(
    title: 'Stepper',
    subtitle: 'Material Design风格的步骤指示器',
    page: StepperPage(),
  ),
  MyListTile(
    title: 'Divider',
    subtitle: '水平分割线',
    page: DividerPage(),
  ),
];
