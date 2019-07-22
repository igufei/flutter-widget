import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoApp',
      text: _text,
      code: _code,
      example: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: CupertinoApp(
        home: Container(
          alignment: Alignment.center,
          child: Text('cupertion app'),
        ),
        title: 'cupertion app',
        color: Colors.blueAccent,
        checkerboardOffscreenLayers: true,
        showSemanticsDebugger: true,
      ),
    );
  }
}

final _text = '''
''';

final _code = '''CupertinoApp({
  Key key,
  this.navigatorKey,
  this.home,//默认显示的视图widget
  this.theme,//主题
  this.routes = const <String, WidgetBuilder>{},//路由表
  this.initialRoute,//初始路由
  this.onGenerateRoute,//在生成路由时触发
  this.onUnknownRoute,//在无法访问路由时触发
  this.navigatorObservers = const <NavigatorObserver>[],//导航观察
  this.builder,//构建器
  this.title = '',//显示在任务管理器时的标题
  this.onGenerateTitle,//在生成标题时触发
  this.color,//主色
  this.locale,//语言支持
  this.localizationsDelegates,//多语言代理
  this.localeListResolutionCallback,//多语言回调
  this.localeResolutionCallback,//这个回调函数被传递给这个小部件构建的[WidgetsApp]
  this.supportedLocales = const <Locale>[Locale('en', 'US')],//
  this.showPerformanceOverlay = false,//显示性能数据
  this.checkerboardRasterCacheImages = false,//打开栅格缓存图像的检查板。
  this.checkerboardOffscreenLayers = false,//打开显示到屏幕外位图的图层的检查面板。
  this.showSemanticsDebugger = false,//打开一个覆盖图，显示框架报告的可访问性信息
  this.debugShowCheckedModeBanner = true,//是否显示右上角的DEBUG图标
})
''';
