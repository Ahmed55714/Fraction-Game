import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class FractionDisplayWidget extends StatelessWidget {
  final int selectedCount;
  final int totalSquares;

  const FractionDisplayWidget({
    required this.selectedCount,
    required this.totalSquares,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$selectedCount', // Selected squares
              style: TextStyle(color: AppColors.cyen, fontSize: 50.sp),
            ),
            Text(
              '/',
              style: TextStyle(color: AppColors.cyen, fontSize: 50.sp),
            ),
            Text(
              '$totalSquares', // Total squares (rows * columns)
              style: TextStyle(color: AppColors.cyen, fontSize: 50.sp),
            ),
          ],
        ),
      ],
    );
  }
}
