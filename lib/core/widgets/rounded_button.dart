import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';
import '../constants/text_themes.dart';
import '../models/button_model.dart';
import 'loder.dart';

class RoundedButton extends StatelessWidget {
  final ButtonModel model;

  const RoundedButton({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: model.onPress,
      child: Container(
        height: model.height ?? 40.h,
        width: model.width ?? double.infinity,
        decoration: BoxDecoration(
          color: model.color ?? AppColors.primary,
          border: Border.all(
            color: model.borderColor ?? AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(model.radius ?? 10.r),
        ),
        child: Center(
          child: model.isLoading
              ? Loder(
                  color: AppColors.whiteBackground,
                )
              : FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    model.title ?? "",
                    style: model.textStyle ??
                        TextThemes.style8400.copyWith(
                          color: model.textColor,
                          fontSize: 16.sp,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      ),
    );
  }
}
