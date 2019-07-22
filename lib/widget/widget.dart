import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final title, subtitle, page;
  MyListTile({
    @required this.title,
    @required this.subtitle,
    @required this.page,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Divider(
            height: 1,
          ),
        ),
        ListTile(
          title: Text(title),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 12),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          dense: true,
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}

class ExpansionTileBody extends StatelessWidget {
  final List<MyListTile> list;
  ExpansionTileBody(this.list);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: list.map((data) {
          return data;
        }).toList(),
      ),
    );
  }
}

class Myscaffold extends StatefulWidget {
  final String title, text, code;
  final Widget example;
  Myscaffold({
    @required this.title,
    @required this.text,
    @required this.code,
    @required this.example,
  });
  @override
  _MyscaffoldState createState() => _MyscaffoldState();
}

class _MyscaffoldState extends State<Myscaffold>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: Colors.white70,
            indicatorWeight: 1,
            controller: _tabController,
            labelStyle: TextStyle(fontSize: 14),
            tabs: <Widget>[
              Tab(text: '功能简介'),
              Tab(text: '属性解析'),
              Tab(text: '事例展示'),
            ],
          )),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(widget.text),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff282c34),
                  border: Border.all(color: Color(0xffcccccc)),
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                widget.code,
                style: TextStyle(color: Color(0xffabb2bf), fontSize: 13),
              ),
            ),
          ),
          SingleChildScrollView(child: widget.example),
        ],
      ),
    );
  }
}
