import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget.dart';

class DataTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Myscaffold(
      title: 'DataTable',
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
      child: Column(
        children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('用户名')),
              DataColumn(label: Text('Email')),
              DataColumn(label: Text('手机')),
              DataColumn(label: Text('QQ')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('张三')),
                  DataCell(Text('zs@qq.com')),
                  DataCell(Text('1589900999')),
                  DataCell(Text('999999')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('张三')),
                  DataCell(Text('zs@qq.com')),
                  DataCell(Text('1589900999')),
                  DataCell(Text('999999')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('张三')),
                  DataCell(Text('zs@qq.com')),
                  DataCell(Text('1589900999')),
                  DataCell(Text('999999')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('张三')),
                  DataCell(Text('zs@qq.com')),
                  DataCell(Text('1589900999')),
                  DataCell(Text('999999')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final _text = '''
创建描述数据表的小部件。
[columns]参数必须是一个包含尽可能多的[DataColumn]对象的列表，如果表中有列，则忽略前面的复选框列(如果有的话)。[columns]参数的长度必须大于零，且不能为空。
[rows]参数必须是一个包含尽可能多的[DataRow]对象的列表，忽略包含列标题的首行(从[columns]参数派生而来)。可能有零行，但是rows参数不能为空。
[行]中的每个[DataRow]对象必须具有相同数量的[数据]
''';

final _code = '''
//表格
DataTable({
  Key key,
  @required this.columns,//表头
  this.sortColumnIndex,//排序列索引
  this.sortAscending = true,//是否升序排序
  this.onSelectAll,//选择全部时的回调
  @required this.rows,//内容行
})

//表头
DataColumn({
  @required this.label,//通常是文本，也可以是图标
  this.tooltip,//长按文本提示
  this.numeric = false,//显示在列表项的左边还是右边默认是左
  this.onSort,//排序回调
})

//表行
DataRow({
  this.key,
  this.selected = false,//是否选中
  this.onSelectChanged,//选中改变回调
  @required this.cells,
}) 

//表项
DataCell(
  this.child, //子widget
  {
  this.placeholder = false,//是否[子]实际上是占位符。
如果是这样，则单元格的默认文本样式将更改为适合于占位符文本
  this.showEditIcon = false,//是否在child的右边显示一个编辑小图标
  this.onTap,//点击回调
}) 

 
''';
