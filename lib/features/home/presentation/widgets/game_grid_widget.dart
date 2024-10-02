import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../painters/grid_painter.dart';
import '../painters/arrow_painter.dart';

class GameGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 200.w,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(200.w, 200.h),
            painter: GridPainter(),
          ),
          Positioned(
            top: 0.h,
            left: 90.w,
            child: CustomPaint(
              size: Size(15.w, 15.h),
              painter: ArrowPainter(
                  color: AppColors.purple, direction: ArrowDirection.down),
            ),
          ),
          Positioned(
            left: 0.w,
            top: 90.h,
            child: CustomPaint(
              size: Size(15.w, 15.h),
              painter: ArrowPainter(
                  color: AppColors.cyen, direction: ArrowDirection.right),
            ),
          ),
          Positioned(
            right: 0.w,
            top: 90.h,
            child: CustomPaint(
              size: Size(15.w, 15.h),
              painter: ArrowPainter(
                  color: AppColors.cyen, direction: ArrowDirection.left),
            ),
          ),
          Positioned(
            bottom: 0.h,
            left: 90.w,
            child: CustomPaint(
              size: Size(15.w, 15.h),
              painter: ArrowPainter(
                  color: AppColors.purple, direction: ArrowDirection.up),
            ),
          ),
        ],
      ),
    );
  }
}
