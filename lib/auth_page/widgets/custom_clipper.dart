import 'package:flutter/widgets.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    double radius = 20;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius))
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: const Radius.elliptical(40, 20))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
