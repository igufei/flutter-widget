import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class DateTimePickersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
        title: 'Date & Time Pickers',
        text: _text,
        code: _code,
        example: Container(
          //color: Color(0xff000000),
          child: Test(),
        ));
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  TimeOfDay _time = TimeOfDay.now();
  DateTime _date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text('选择时间'),
                onPressed: () async {
                  var time = await showTimePicker(
                      context: context,
                      initialTime: _time,
                      builder: (context, child) {
                        return child;
                      });
                  setState(() {
                    _time = time == null ? TimeOfDay.now() : time;
                  });
                },
              ),
              Text(_time == null ? '' : _time.format(context)),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text('选择日期'),
                onPressed: () async {
                  var date = await showDatePicker(
                  
                    context: context,
                    locale: Locale('zh'),
                    firstDate: DateTime.now().subtract(new Duration(days: 30)),
                    lastDate: DateTime.now().add(Duration(days: 30)),
                    initialDate: _date,
                    builder: (BuildContext context, Widget child) {
                      return Theme(
                        data: ThemeData.dark(),
                        child: child,
                      );
                    },
                  );
                  setState(() {
                    _date = date == null ? DateTime.now() : date;
                  });
                },
              ),
              Text(_date.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

final _text = '''
显示一个material design 风格的时间(日期)选择器

原来显示的对话框是英文的，如果支持中文需要添加国际化

在/pubspec.yaml中：
...
dependencies:
  flutter:
    sdk: fultter
  flutter_localizations: # 添加
    sdk: flutter         # 添加

/lib/main.dart中：

import 'package:flutter_localizations/flutter_localizations.dart'; // 添加

// MaterialApp中加入
...
localizationsDelegates: [
  GlobalMeterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
],
supportedLocales: [
    const Locale('zh', 'CH'),
    const Locale('en', 'US'),
],
locale: const locale('zh'),
...
''';

final _code = '''showTimePicker({
  BuildContext context,//上下文
  TimeOfDay initialTime, //初始时间
  (BuildContext, Widget) → Widget builder
})构建器,参数child就是时间选择器widget, 开发者可以在这里对时间选择器的父widget进行一些操作
***********************
Future<DateTime> showDatePicker ({
    @required BuildContext context, // 上下文
    @required DateTime initialDate, // 初始日期
    @required DateTime firstDate,   // 日期范围，开始
    @required DateTime lastDate,    // 日期范围，结尾
    SelectableDayPredicate selectableDayPredicate,
    DatePickerMode initialDatePickerMode: DatePickerMode.day,
    Locale locale,                  // 国际化
    TextDirection textDirection,//文本排列方向
});
''';
