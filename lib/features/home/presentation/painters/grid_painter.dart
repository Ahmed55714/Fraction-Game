import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  final int columns;
  final int rows;

  GridPainter({required this.columns, required this.rows});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey[700]!
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double cellWidth = size.width / columns;
    double cellHeight = size.height / rows;

    for (int i = 0; i <= columns; i++) {
      // Draw vertical lines
      canvas.drawLine(Offset(i * cellWidth, 0), Offset(i * cellWidth, size.height), paint);
    }

    for (int i = 0; i <= rows; i++) {
      // Draw horizontal lines
      canvas.drawLine(Offset(0, i * cellHeight), Offset(size.width, i * cellHeight), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
