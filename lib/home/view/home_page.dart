import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:locator/home/home.dart';
import 'package:locator/src/colors.dart';
import 'package:locator/src/container_clipper.dart';

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
                        clipper: ContainerClipper(),
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
