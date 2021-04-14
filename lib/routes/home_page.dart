import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/eyepetizer_localizations.dart';

import '../app_constants.dart';
import 'daily_page.dart';
import 'discovery_page.dart';
import 'recommend_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, RestorationMixin {
  late TabController _tabController;
  final RestorableInt tabIndex = RestorableInt(1);

  @override
  String get restorationId => Constants.HOME_PAGE;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(tabIndex, Constants.HOME_PAGE_TABLE_INDEX);
    _tabController.index = tabIndex.value;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() {
      setState(() {
        tabIndex.value = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    tabIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      EyepetizerLocalizations.of(context)!.discovery,
      EyepetizerLocalizations.of(context)!.recommend,
      EyepetizerLocalizations.of(context)!.daily,
    ];
    final tabChildrens = [
      DiscoveryPage(),
      RecommendPage(),
      DailyPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: [
              for (final tab in tabs) Tab(text: tab),
            ],
            labelStyle: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center,
          // color: Colors.red,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabChildrens,
      ),
    );
  }
}
