import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locator/src/colors.dart';

class ItemsTabBar extends StatefulWidget {
  const ItemsTabBar({super.key});

  @override
  State<ItemsTabBar> createState() => _ItemsTabBarState();
}

class _ItemsTabBarState extends State<ItemsTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(right: 10),
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    labelColor: Colors.black,
                    indicator: const BoxDecoration(),
                    tabs: [
                      Tab(
                        child: Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: tabColor,
                          ),
                          child: Center(
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: blackColor,
                                fontWeight: _tabController.index == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: tabColor,
                          ),
                          child: Center(
                            child: Text(
                              'People',
                              style: TextStyle(
                                color: blackColor,
                                fontWeight: _tabController.index == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: tabColor,
                          ),
                          child: Center(
                            child: Text(
                              'Items',
                              style: TextStyle(
                                color: blackColor,
                                fontWeight: _tabController.index == 2
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: tabColor),
                  ),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.ellipsis,
                      color: blackColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const <Widget>[
                  Center(child: Text('All tab')),
                  Center(child: Text('People tab')),
                  Center(child: Text('Items tab')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTab({required String text, required int index}) {
    return Tab(
      child: Container(
        width: 70,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: tabColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: blackColor,
              fontWeight: _tabController.index == 0
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
