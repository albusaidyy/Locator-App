import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locator/src/colors.dart';

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
