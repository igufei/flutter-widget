import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class MaterialAppPage extends StatelessWidget {
  final _routes = {
    '/hello': (ctx) => Text('hello'),
    '/ping': (ctx) => Text('pong'),
    '/hi': (ctx) => Text('hi'),
  };
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'MaterialApp',
      text: _text,
      code: _code,
      example: Container(
        padding: EdgeInsets.all(10),
        height: 350,
        child: MaterialApp(
          title: 'Flutter Demo',
          onGenerateTitle: (text) => 'hello',
          routes: _routes,
          theme: ThemeData(
            primaryColor: Color.fromARGB(255, 245, 169, 175),
          ),
          home: Container(
            child: Text('abc'),
          ),
          initialRoute: '/',
          onGenerateRoute: (setting) {
            return MaterialPageRoute(
              settings: setting,
              builder: (ctx) => Text('onGenerateRoute'),
            );
          },
          onUnknownRoute: (setting) {
            return MaterialPageRoute(
              settings: setting,
              builder: (ctx) => Text('onUnknownRoute'),
            );
          },
          navigatorObservers: [NewObserver()],
          builder: (ctx, widget) => Container(
                width: 200,
                height: 200,
                color: Colors.blueAccent,
                alignment: Alignment.center,
                child: Container(
                  color: Colors.yellow,
                  child: widget,
                  width: 100,
                  height: 100,
                ),
              ),
          color: Colors.red,
          debugShowMaterialGrid: true,
          showPerformanceOverlay: false,
          checkerboardRasterCacheImages: true,
          checkerboardOffscreenLayers:true,
          showSemanticsDebugger: true,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

final _text = '''
MaterialApp是Material Design设计风格的一个flutter 封装。

[home]，[routes]，[onGenerateRoute]或[builder]中的至少一个必须为非null。 如果仅给出[routes]，则它必须包含[Navigator.defaultRouteName]（/）的视图，因为这是在启动应用程序时使用的路由，目的是指定不受支持的路由。

布尔类型参数：[routes]和[navigatorObservers]不能为null。

[routes]中的'/' 与 [home]不能同时出现，只能先其一，不然会报错。
''';

final _code = '''MaterialApp({
  Key key,
  this.navigatorKey,
  this.home,//默认显示的视图widget
  this.routes = const <String, WidgetBuilder>{},
  this.initialRoute,//默认显示的视图路由路径
  this.onGenerateRoute,
  this.onUnknownRoute,
  this.navigatorObservers = const <NavigatorObserver>[],
  this.builder,
  this.title = '',
  this.onGenerateTitle,
  this.color,
  this.theme,//默认主题
  this.darkTheme,//黑暗主题
  this.locale,//支持的语言
  this.localizationsDelegates,//多语言代理
  this.localeListResolutionCallback,//多语言回调
  this.localeResolutionCallback,//这个回调函数被传递给这个小部件构建的[WidgetsApp]
  this.supportedLocales = const <Locale>[Locale('en', 'US')],
  this.debugShowMaterialGrid = false,//是否显示网格
  this.showPerformanceOverlay = false,//显示性能表
  this.checkerboardRasterCacheImages = false,//打开栅格缓存图像的检查板。
  this.checkerboardOffscreenLayers = false,//打开显示到屏幕外位图的图层的检查面板。
  this.showSemanticsDebugger = false,//打开一个覆盖图，显示框架报告的可访问性信息
  this.debugShowCheckedModeBanner = true,//是否显示右上角的DEBUG图标
})
*******************************
home:APP默认路径Widget([Navigator.defaultRouteName], 也就是 /)
      除非指定[initialRoute]，否则它会默认显示，如果[initialRoute]
      指定的路径无法显示，就会显示它。

initialRoute:初始路由
onGenerateRoute:访问了错误路由时会进入此路由
onUnknownRoute:routes表里没有'/'路由，同时也没有生成onGenerateRoute，[home]也没有，就会进去此处，
navigatorObservers:每次路由访问时执行，这是一个列表，可以对路由访问进行跟踪观察
builder:优先渲染这里的Widget，它有个参数widget，这个是routes里的子widget
title: 这里是任务管理里显示的名字
onGenerateTitle:如果为非null，则调用此回调函数来生成应用程序的标题字符串，否则使用[title]。
''';

class NewObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    // 当调用Navigator.push时回调
    super.didPush(route, previousRoute);
    //可通过route.settings获取路由相关内容
    print(route.settings);
    print(previousRoute);
  }

  @override
  void didPop(Route route, Route previousRoute) {
    // TODO: implement didPop
    // 当调用Navigator.pop时回调
    super.didPop(route, previousRoute);
    print(route);
    //route.currentResult获取返回内容
    print(previousRoute);
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    // TODO: implement didRemove
    // 当调用Navigator.Remove时回调
    super.didRemove(route, previousRoute);
    print(route);
    print(previousRoute);
  }
}
