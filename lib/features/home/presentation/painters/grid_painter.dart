import 'package:flutter/material.dart';
import 'package:fraction/core/constants/app_colors.dart';

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.grey700
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double cellSize = size.width / 3;

    // width and height to ensure the lines are drawn within the bounds
    double adjustedWidth = size.width - paint.strokeWidth / 2;
    double adjustedHeight = size.height - paint.strokeWidth / 2;

    // Draw grid lines
    for (int i = 0; i <= 3; i++) {
      // Draw horizontal lines
      canvas.drawLine(
          Offset(0, i * cellSize), Offset(adjustedWidth, i * cellSize), paint);

      // Draw vertical lines
      canvas.drawLine(
          Offset(i * cellSize, 0), Offset(i * cellSize, adjustedHeight), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
