import 'package:flutter/material.dart';

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final path = Path()
      ..lineTo(0, h) //2nd point
      ..quadraticBezierTo(
        w * 0.5, // 3rd point
        h - 20, //3rd point
        w, //4th point
        h,
      )
      ..lineTo(w, 0) //5th point
      ..quadraticBezierTo(
        w * 0.5, //6th point
        12,
        0,
        0,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
