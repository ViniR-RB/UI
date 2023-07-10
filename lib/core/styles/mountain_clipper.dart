import 'package:flutter/material.dart';

class MountainClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.7);
    path.lineTo(size.width * 0.15, size.height * 0.8);
    path.lineTo(size.width * 0.3, size.height * 0.6);
    path.lineTo(size.width * 0.45, size.height * 0.7);
    path.lineTo(size.width * 0.6, size.height * 0.4);
    path.lineTo(size.width * 0.75, size.height * 0.5);
    path.lineTo(size.width * 0.9, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}