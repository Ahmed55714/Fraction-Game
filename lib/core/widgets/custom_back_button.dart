import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_colors.dart';
import '../constants/image_paths.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isArabic;
  final Color? color;

  CustomBackButton(
      {Key? key,
      required this.onPressed,
      this.isArabic = false,
      this.color = AppColors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic ? Alignment.centerRight : Alignment.centerLeft,
      child: IconButton(
        icon: SvgPicture.asset(
          !isArabic ? ImagePaths.leftIcon : ImagePaths.rightIcon,
          color: color,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
