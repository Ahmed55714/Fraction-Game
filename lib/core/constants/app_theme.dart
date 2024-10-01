import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'app_colors.dart';
import 'text_field_styles.dart';
import 'text_themes.dart';

ThemeData buildAppTheme(context) {
  return ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.whiteBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteBackground,
      elevation: 0,
      iconTheme: IconThemeData(
        size: 28.w,
        color: AppColors.primary,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.greySoft,
        contentPadding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
      //  hintStyle:
          //  TextThemes.style12400.copyWith(color: AppColors.greyBarelyMedium),
        border: TextFieldsStyles.disabledOutlineInputBorder,
        enabledBorder: TextFieldsStyles.disabledOutlineInputBorder,
        focusedBorder: TextFieldsStyles.enabledOutlineInputBorder,
        errorBorder: TextFieldsStyles.errorRoundedInputBorder,
        focusedErrorBorder: TextFieldsStyles.disabledOutlineInputBorder,
        errorStyle: TextThemes.style8400),
  );
}