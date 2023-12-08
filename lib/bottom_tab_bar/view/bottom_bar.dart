import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locator/home/home.dart';
import 'package:locator/profile/profile.dart';
import 'package:locator/src/colors.dart';

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
    ProfilePage(),
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
                        icon: Icon(CupertinoIcons.lock_shield),
                        label: 'Safety',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.ellipses_bubble,
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
