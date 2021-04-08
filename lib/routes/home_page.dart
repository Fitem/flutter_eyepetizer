import 'package:flutter/material.dart';
import 'package:flutter_eyepetizer/l10n/localization_intl.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GmLocalizations.of(context).home),
      ),
      body: _buildBody(), // 构建主页面
      drawer: MyDrawer(), //抽屉菜单
    );
  }

  Widget _buildBody() {
    //用户未登录，显示登录按钮
    return Center(
      child: RaisedButton(
        child: Text(GmLocalizations.of(context).home),
        onPressed: () => Navigator.of(context).pushNamed("login"),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(context), //构建抽屉菜单头部
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.only(top: 40, bottom: 20),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipOval(
                // 如果已登录，则显示用户头像；若未登录，则显示默认头像
                child: Text("title"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
