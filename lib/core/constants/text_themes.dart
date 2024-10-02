import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class TextThemes {
  // Headings
  static final TextStyle heading1 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'FFMark',
    color: AppColors.headingText,
  );

  static final TextStyle heading3 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'FFMark',
    color: AppColors.headingText,
  );

  // Body Text
  static final TextStyle bodyText = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'FFMarkRegaler',
    color: AppColors.bodyText,
  );

  // Captions
  static final TextStyle caption = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.greyMedium,
  );

  // Custom Styles
  static final TextStyle style8400 = TextStyle(
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.greyDark,
  );




}
