import 'package:flutter/material.dart';

enum ArrowDirection { up, down, left, right }

class ArrowPainter extends CustomPainter {
  final Color color;
  final ArrowDirection direction;

  ArrowPainter({required this.color, required this.direction});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    Path path = Path();

    switch (direction) {
      case ArrowDirection.up:
        path.moveTo(size.width / 2, 0);
        path.lineTo(0, size.height);
        path.lineTo(size.width, size.height);
        break;
      case ArrowDirection.down:
        path.moveTo(size.width / 2, size.height);
        path.lineTo(0, 0);
        path.lineTo(size.width, 0);
        break;
      case ArrowDirection.left:
        path.moveTo(0, size.height / 2);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, size.height);
        break;
      case ArrowDirection.right:
        path.moveTo(size.width, size.height / 2);
        path.lineTo(0, 0);
        path.lineTo(0, size.height);
        break;
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
