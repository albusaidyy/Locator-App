import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:locator/src/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                  shape: const CircleBorder(),
                  elevation: 3,
                  shadowColor: blackColor,
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent),
                      color: iconBackGroundColor,
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.search,
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Card(
                  shape: const CircleBorder(),
                  elevation: 3,
                  shadowColor: blackColor,
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent),
                      color: iconBackGroundColor,
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.gear_alt,
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Card(
                        shape: const CircleBorder(),
                        elevation: 3,
                        shadowColor: blackColor,
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.transparent),
                            color: iconBackGroundColor,
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.add,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Card(
                        shape: const CircleBorder(),
                        elevation: 3,
                        shadowColor: blackColor,
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.transparent),
                            color: iconBackGroundColor,
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.minus,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Card(
                        shape: const CircleBorder(),
                        elevation: 3,
                        shadowColor: blackColor,
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.transparent),
                            color: iconBackGroundColor,
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.location,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(36),
                                color: iconBackGroundColor,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 3,
                                      vertical: 3,
                                    ),
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Colors.transparent),
                                      color: greenColor,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        CupertinoIcons.add,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Add new tag',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(36),
                                color: iconBackGroundColor,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 3,
                                      vertical: 3,
                                    ),
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Colors.transparent),
                                      color: greenColor,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        CupertinoIcons.add,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Add new item',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                      ),
                      child: ClipPath(
                        clipper: ItemsContainerClipper(),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.transparent),
                            color: greenColor,
                          ),
                          child: const ItemsTabBar(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

class ItemsContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final path = Path()
      ..lineTo(0, h) //2nd point
      ..quadraticBezierTo(
        w * 0.5, // 3rd point
        h - 10, //3rd point
        w, //4th point
        h,
      )
      ..lineTo(w, 0) //5th point
      ..quadraticBezierTo(
        w * 0.5, //6th point
        10,
        0,
        0,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Coming Soon...',
      style: optionStyle,
    ),
    Text(
      'Coming Soon...',
      style: optionStyle,
    ),
    Text(
      'Coming Soon...',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.white,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.map),
                        label: 'Location',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.route_outlined),
                        label: 'Driving',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.safety_check_outlined),
                        label: 'Safety',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.message_outlined,
                          color: Colors.black,
                        ),
                        label: 'Chat',
                      ),
                    ],
                    currentIndex: _selectedIndex,
                    selectedItemColor: blackColor,
                    onTap: _onItemTapped,
                    unselectedItemColor: Colors.grey,
                    showUnselectedLabels: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
