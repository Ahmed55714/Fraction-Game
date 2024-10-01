// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lawyer/core/constants/app_colors.dart';
// import 'package:lawyer/core/constants/lang_keys.dart';
// import 'package:lawyer/core/constants/text_themes.dart';

// class SkipButton extends StatelessWidget {
//   final VoidCallback onPressed;

//   const SkipButton({Key? key, required this.onPressed}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Text(
//         LangKeys.skip,
//         style: TextThemes.bodyTextBold.copyWith(
//             color: AppColors.primary,
//             decoration: TextDecoration.underline,
//             fontSize: 18.sp),
//       ),
//       style: ButtonStyle(
//         overlayColor: MaterialStateProperty.all(Colors.transparent),
//       ),
//     );
//   }
// }
