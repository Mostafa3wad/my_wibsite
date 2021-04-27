import 'package:flutter/cupertino.dart';

class CliperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 70);
    path.quadraticBezierTo(size.width * 0.85, 0, size.width * 0.6, 70);
    path.quadraticBezierTo(size.width * 0.3, 0, 0, 70);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
