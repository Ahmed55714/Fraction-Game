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

  static final TextStyle style8500 = TextStyle(
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'FFMark',
    color: AppColors.greyDark,
  );

  static final TextStyle style8700 = TextStyle(
    fontSize: 8.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'FFMark',
    color: AppColors.greyDark,
  );

  static final TextStyle style9500 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'FFMark',
    color: AppColors.greyMedium,
  );

  static final TextStyle style9600 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'FFMark',
    color: AppColors.greyMedium,
  );

  // Titles
  static final TextStyle titleStyle = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'FFMark',
    color: AppColors.titleText,
  );

  // Newly added style
  static final TextStyle style16700 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'FFMark',
    color: AppColors.bodyText,
  );

  static final TextStyle style12600 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'FFMark',
    color: AppColors.bodyText,
  );

  static final TextStyle heading2 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle bodyTextBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'FFMark',
    color: Colors.black,
  );

  static TextStyle head2({required Color primaryColor}) {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'FFMark',
      color: primaryColor,
    );
  }

  static TextStyle bodyBold({required Color primaryColor}) {
    return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'FFMark',
      color: primaryColor,
    );
  }

  static final TextStyle issueOption = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle issueOptionSelected = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'FFMark',
    color: Colors.white,
  );

  // Newly added styles from the SignUp screen

  static final TextStyle formLabel = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.blackBackground,
  );

  static final TextStyle checkboxText = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle linkText = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle alreadyHaveText = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  // Styles extracted from the SignUpContinueScreen

  static final TextStyle overviewLabel = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle tapToSelectText = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle overviewHint = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle profilePictureLabel = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  // Styles from the PackageScreen

  static final TextStyle packageTitle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle packageDescription = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'FFMarkRegaler',
    color: Colors.grey[400],
  );

  static final TextStyle packagePrice = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );

  static final TextStyle packageDuration = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'FFMark',
    color: Colors.blue[600],
  );
  static final TextStyle bodyTextSmall = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'FFMarkRegaler',
    color: AppColors.bodyText,
  );

  static final TextStyle packageDetailsHeading = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'FFMark',
    color: AppColors.primary,
  );
}
