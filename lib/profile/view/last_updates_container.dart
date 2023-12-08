import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locator/src/colors.dart';

class LastUpdatesContainer extends StatefulWidget {
  const LastUpdatesContainer({super.key});

  @override
  State<LastUpdatesContainer> createState() => _LastUpdatesContainerState();
}

class _LastUpdatesContainerState extends State<LastUpdatesContainer> {
  double _currentHeight = 0;
  bool isExpanded = true;

  final double _expandedHeight = 100;
  final List<Map<String, String>> lUpdates = [
    {'streetName': 'Main Street', 'time': '8:00'},
    {'streetName': 'Elm Street', 'time': '10:15'},
    {'streetName': 'Park Avenue', 'time': '12:30'},
    {'streetName': 'Maple Drive', 'time': '2:45'},
    {'streetName': 'Sunset Boulevard', 'time': '5:00'},
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
              final streetName = lUpdates[index]['streetName'];
              final time = lUpdates[index]['time'];

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    streetName!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    time!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
