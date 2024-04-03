import 'package:flutter/material.dart';

class SliverAppz extends StatefulWidget {
  const SliverAppz({super.key});

  @override
  State<SliverAppz> createState() => _SliverAppzState();
}

class _SliverAppzState extends State<SliverAppz>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: const Text('Weight Tracker'),
            pinned: true,
            floating: true,
            forceElevated: innerBoxIsScrolled,
            bottom: TabBar(
              tabs: const <Tab>[
                Tab(text: 'STATISTICS'),
                Tab(text: 'HISTORY'),
              ],
              controller: _tabController,
            ),
          ),
        ];
      },
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Text("Test"),
          Text("Test"),
        ],
      ),
    );
  }
}
