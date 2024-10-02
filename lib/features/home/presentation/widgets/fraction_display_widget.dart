import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fraction/core/constants/app_colors.dart';

class FractionDisplayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1',
              style: TextStyle(color: AppColors.cyen, fontSize: 50.sp),
            ),
            Text(
              '/',
              style: TextStyle(color: AppColors.cyen, fontSize: 50.sp),
            ),
            Text(
              '3',
              style: TextStyle(color: AppColors.cyen, fontSize: 50.sp),
            ),
          ],
        ),
        SizedBox(height: 10.h), // Use .h for vertical spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '+',
              style: TextStyle(color: AppColors.grey, fontSize: 50.sp),
            ),
            SizedBox(width: 10.w), // Use .w for horizontal spacing
            Row(
              children: [
                Text(
                  '1',
                  style: TextStyle(color: AppColors.purple, fontSize: 50.sp),
                ),
                Text(
                  '/',
                  style: TextStyle(color: AppColors.purple, fontSize: 50.sp),
                ),
                Text(
                  '2',
                  style: TextStyle(color: AppColors.purple, fontSize: 50.sp),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
