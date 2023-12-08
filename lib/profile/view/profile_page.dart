import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locator/src/colors.dart';
import 'package:locator/src/container_clipper.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage(
                    'assets/images/profile_2.png',
                  ),
                  radius: 80,
                  onBackgroundImageError: (e, s) {
                    debugPrint('Image issue, $e, $s');
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: iconBackGroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.info_outline_rounded,
                              color: blackColor,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: greenColor,
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Text(
                            'id 1446787',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.ellipses_bubble,
                              color: blackColor,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipPath(
                  clipper: ContainerClipper(),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.transparent),
                      color: iconBackGroundColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Now is',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: blackColor,
                                ),
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                color: blackColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '84 Kamarajar St',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: blackColor,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Since 7:54',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'School',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '9 min updated',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipPath(
                  clipper: ContainerClipper(),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.transparent),
                      color: iconBackGroundColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: LastUpdatesContainer(),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent),
                      color: blackColor,
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.phone,
                        color: iconBackGroundColor,
                        size: 20,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: blackColor,
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: iconBackGroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent),
                      color: blackColor,
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.battery_25,
                        color: iconBackGroundColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LastUpdatesContainer extends StatefulWidget {
  const LastUpdatesContainer({super.key});

  @override
  State<LastUpdatesContainer> createState() => _LastUpdatesContainerState();
}

class _LastUpdatesContainerState extends State<LastUpdatesContainer> {
  double _currentHeight = 0;
  bool isExpanded = true;

  final double _expandedHeight = 100;
  final List<int> lUpdates = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    0,
    11,
    12,
    13,
    14,
    15,
    16,
  ];

  void _expandOnChanged() {
    isExpanded = _currentHeight == _expandedHeight;
    setState(() {
      _currentHeight = isExpanded ? 0 : _expandedHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Last updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: blackColor,
              ),
            ),
            GestureDetector(
              onTap: _expandOnChanged,
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Icon(
                    isExpanded
                        ? CupertinoIcons.chevron_down
                        : CupertinoIcons.chevron_up,
                    color: blackColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          '8:07',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: blackColor,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        // this is the body which expands and collapses by height change
        AnimatedContainer(
          height: _currentHeight,
          width: double.infinity,
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 150),
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: lUpdates.length,
            itemBuilder: (context, index) {
              final item = lUpdates[index];

              return Text(item.toString());
            },
          ),
        ),
      ],
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: AppBar(
        backgroundColor: backGroundColor,
        leading: Card(
          shape: const CircleBorder(),
          elevation: 3,
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
                CupertinoIcons.back,
                color: blackColor,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Jeniffer',
          style: TextStyle(fontWeight: FontWeight.bold, color: blackColor),
        ),
        actions: [
          Card(
            shape: const CircleBorder(),
            elevation: 3,
            shadowColor: blackColor,
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.transparent),
                color: blackColor,
              ),
              child: const Center(
                child: Icon(
                  CupertinoIcons.location,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
