import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  final int columns;
  final int rows;

  GridPainter({required this.columns, required this.rows});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = _createPaint();
    double cellWidth = size.width / columns;
    double cellHeight = size.height / rows;

    _drawVerticalLines(canvas, size, cellWidth, paint);
    _drawHorizontalLines(canvas, size, cellHeight, paint);
  }

  Paint _createPaint() {
    return Paint()
      ..color = Colors.grey[700]!
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
  }

  // Draw vertical grid lines
  void _drawVerticalLines(
      Canvas canvas, Size size, double cellWidth, Paint paint) {
    for (int i = 0; i <= columns; i++) {
      double x = i * cellWidth;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
  }

  // Draw horizontal grid lines
  void _drawHorizontalLines(
      Canvas canvas, Size size, double cellHeight, Paint paint) {
    for (int i = 0; i <= rows; i++) {
      double y = i * cellHeight;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
