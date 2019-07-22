import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/cupertino/index.dart';
import 'package:flutter_widget/widget/widget.dart';

class CupertinoDataPickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'CupertinoDataPicker',
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
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (DateTime dateTime) {},
                      initialDateTime: DateTime.now(),
                      minimumDate: DateTime.utc(2019,5,1),
                      maximumDate: DateTime.utc(2019,11,1),
                      minimumYear: 1983,
                      maximumYear: 2019,
                      use24hFormat: true,
                    );
                  });
            },
            child: Text('显示日期选择器'),
          ),
           CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (DateTime dateTime) {},
                      initialDateTime: DateTime.now(),
                      minimumDate: DateTime.utc(2019,5,1),
                      maximumDate: DateTime.utc(2019,11,1),
                      minimumYear: 1983,
                      maximumYear: 2019,
                      use24hFormat: true,
                    );
                  });
            },
            child: Text('显示时间选择器'),
          )
        ],
      ),
    );
  }
}

final _text = '''iOS风格的日期选择器小部件。
在CupertinoDatePickerMode中列出了几种日期选择器模式。
''';

final _code = '''///
/// [mode]是[CupertinoDatePickerMode]中列出的模式之一，默认值为[CupertinoDatePickerMode.dateAndTime]
///
/// [onDateTimeChanged]在时间更改后触发，不能为空。
///
/// [initialDateTime] 初始日期时间。
///
/// [minimumDate] 能选择的最早日期[CupertinoDatePickerMode.dateAndTime]
///
/// [maximumDate] 能选择的最晚日期[CupertinoDatePickerMode.dateAndTime]
///
/// [minimumYear] 能选择的最早年份[CupertinoDatePickerMode.date]
///
/// [maximumYear] 能选择的最晚年份[CupertinoDatePickerMode.date]
///
/// [minuteInterval] 分钟转轮的粒度。必须是60的整数因子。
///
/// [use24hFormat] 决定是否使用24小时格式。默认值为false。
CupertinoDatePicker({
  this.mode = CupertinoDatePickerMode.dateAndTime,
  @required this.onDateTimeChanged,
  DateTime initialDateTime,
  this.minimumDate,
  this.maximumDate,
  this.minimumYear = 1,
  this.maximumYear,
  this.minuteInterval = 1,
  this.use24hFormat = false,
}) 
''';
