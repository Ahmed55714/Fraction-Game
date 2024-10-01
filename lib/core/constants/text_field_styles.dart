import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'app_colors.dart';

class TextFieldsStyles {
  // Default border radius for text fields
  static const double defaultBorderRadius = 10.0;

  // Disabled State Borders
  static OutlineInputBorder disabledOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyMedium, width: 1.w),
    borderRadius: BorderRadius.circular(defaultBorderRadius.r),
  );

  static OutlineInputBorder disabledRoundedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyMedium, width: 1.w),
    borderRadius: BorderRadius.circular(defaultBorderRadius.r),
  );

  // Enabled State Borders
  static OutlineInputBorder enabledOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyMedium, width: 1.w),
    borderRadius: BorderRadius.circular(defaultBorderRadius.r),
  );

  static OutlineInputBorder enabledRoundedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyMedium, width: 1.w),
    borderRadius: BorderRadius.circular(defaultBorderRadius.r),
  );

  // Focused State Borders
  static OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primary, width: 2.w),
    borderRadius: BorderRadius.circular(defaultBorderRadius.r),
  );

  // Error State Borders
  static OutlineInputBorder errorRoundedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.redOne, width: 2.w),
    borderRadius: BorderRadius.circular(defaultBorderRadius.r),
  );

  // Custom Very Rounded Borders
  static OutlineInputBorder veryRoundedInputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(25.r),
  );

  // Custom Pin Theme
  static PinTheme getCustomPinTheme({
    Color? backgroundColor,
    BorderRadius? borderRadius,
    Color? borderColor,
    double borderWidth = 1.0,
    Color? textColor,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return PinTheme(
      height: 55.h,
      width: 55.w,
      textStyle: TextStyle(
        color: textColor ?? AppColors.whiteBackground,
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.whiteBackground,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        border: Border.all(
            color: borderColor ?? AppColors.greyMedium, width: borderWidth),
      ),
    );
  }
}
