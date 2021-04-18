import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoTab extends StatefulWidget {
  PhotoTab({Key key}) : super(key: key);

  @override
  _PhotoTabState createState() => _PhotoTabState();
}

class _PhotoTabState extends State<PhotoTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
//          Container(
//            height: MediaQuery.of(context).size.height / 2,
//            child: Center(
//              child: Text("Profile"),
//            ),
//            color: Colors.blue,
//          ),
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.red,
            tabs: [
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Column(children: [
            TabBarView(
              children: [Text('people'), Text('Person')],
              controller: _tabController,
            ),
          ]),
        ],
      ),
    );
  }
}
