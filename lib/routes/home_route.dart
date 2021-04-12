import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/app_constants.dart';
import 'package:flutter_eyepetizer/common/toast_utils.dart';
import 'package:flutter_eyepetizer/l10n/localization_intl.dart';
import 'package:flutter_eyepetizer/routes/daily_page.dart';
import 'package:flutter_eyepetizer/routes/recommend_page.dart';

import 'discovery_page.dart';
import 'home_page.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => Constants.HOME_ROUTE;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, Constants.HOME_ROUTE_TABLE_INDEX);
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarItems = <Widget>[
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          _onItemTapped(0);
        },
      ),
      SizedBox(),
      IconButton(
        icon: Icon(Icons.business),
        onPressed: () {
          _onItemTapped(1);
        },
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: bottomNavigationBarItems,
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(
            Icons.add,
            size: 20,
          ),
          onPressed: _onAdd),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _buildBody(), // 构建主页面
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex.value = index;
    });
  }

  void _onAdd() {
    showToast("add");
  }

  Widget _buildBody() {
    if (_currentIndex.value == 0) {
      return HomePage();
    } else {
      return DailyPage();
    }
  }
}

