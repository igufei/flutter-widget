import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/basic_widget/index.dart';
import 'package:flutter_widget/pages/cupertino/index.dart';
import 'package:flutter_widget/pages/material/index.dart';
import 'package:flutter_widget/pages/material/layout/index.dart';
import 'package:flutter_widget/widget/my_icons.dart';
import 'package:flutter_widget/widget/widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 39, 50, 56),
      ),
      home: HomePage(),
      supportedLocales: [
        Locale('zh', 'CH'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FallbackCupertinoLocalisationsDelegate(),
      ],
      locale: Locale('zh'),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _expansionPanelList = [
    ExpansionTileData(
      title: '基础组件',
      subtitle: '构建Fluttery应用的基础Widgets',
      body: ExpansionTileBody(basicWidgetDatas),
      icon: MyIcons.widget,
    ),
    ExpansionTileData(
      title: 'Material Components',
      subtitle: '实现了Material Design 视觉效果。',
      body: ExpansionTileBody(materialWidgetDatas),
      icon: MyIcons.android,
    ),
    ExpansionTileData(
      title: 'Cupertino(iOS风格的widget)',
      subtitle: '实现了ios风格的视觉效果。',
      body: ExpansionTileBody(cupertinoWidgetDatas),
      icon: MyIcons.ios,
    ),
    ExpansionTileData(
      title: '布局Widget',
      subtitle: 'columns、rows、grids等。',
      body:  ExpansionTileBody(layoutWidgetDatas),
      icon: MyIcons.layout,
    ),
    ExpansionTileData(
      title: 'Text',
      subtitle: '文本显示和样式',
      body: Text('文本显示和样式'),
      icon: MyIcons.text,
    ),
    ExpansionTileData(
      title: 'Assets、图片、Icons',
      subtitle: '管理assets, 显示图片和Icon。',
      body: Text('管理assets, 显示图片和Icon。'),
      icon: MyIcons.image,
    ),
    ExpansionTileData(
      title: 'Input',
      subtitle: '获取用户输入的widget。',
      body: Text('Material Components 和 Cupertino中获取用户输入的widget。'),
      icon: MyIcons.input,
    ),
    ExpansionTileData(
      title: '动画和Motion',
      subtitle: '在您的应用中使用动画',
      body: Text('在您的应用中使用动画'),
      icon: MyIcons.animation,
    ),
    ExpansionTileData(
      title: '交互模型',
      subtitle: 'UI交互、路由跳转。',
      body: Text('响应触摸事件并将用户路由到不同的页面视图（View）'),
      icon: MyIcons.interaction,
    ),
    ExpansionTileData(
      title: '样式',
      subtitle: 'app主题、样式相关。',
      body: Text('管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充。'),
      icon: MyIcons.theme,
    ),
    ExpansionTileData(
      title: '绘制和效果',
      subtitle: '将视觉效果应用到其子组件',
      body: Text('Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置。'),
      icon: MyIcons.draw,
    ),
    ExpansionTileData(
      title: 'Async',
      subtitle: 'Flutter应用的异步模型。',
      body: Text('Flutter应用的异步模型'),
      icon: MyIcons.async,
    ),
    ExpansionTileData(
      title: '滚动',
      subtitle: '滚动一个拥有多个子组件的父组件',
      body: Text('滚动一个拥有多个子组件的父组件'),
      icon: MyIcons.scroll,
    ),
    ExpansionTileData(
      title: '辅助功能',
      subtitle: '给你的App添加辅助功能',
      body: Text('给你的App添加辅助功能(这是一个正在进行的工作'),
      icon: MyIcons.help,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isOpen) {
            setState(() {
              _expansionPanelList[index].isExpanded = !isOpen;
            });
          },
          children: _expansionPanelList.map<ExpansionPanel>(
            (data) {
              return ExpansionPanel(
                body: data.body,
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    dense: true,
                    leading: Icon(data.icon),
                    title: Text(data.title),
                    subtitle: Text(
                      data.subtitle,
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
                isExpanded: data.isExpanded,
                canTapOnHeader: true,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class ExpansionTileData {
  String title;
  String subtitle;
  Widget body;
  IconData icon;
  bool isExpanded;
  ExpansionTileData({
    @required this.title,
    @required this.subtitle,
    @required this.body,
    @required this.icon,
    this.isExpanded = false,
  });
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}
