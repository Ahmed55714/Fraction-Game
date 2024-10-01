// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lawyer/core/constants/app_colors.dart';
// import 'package:lawyer/core/constants/text_themes.dart';

// class OnBoardingPageContent extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final String subtitle;

//   const OnBoardingPageContent({
//     Key? key,
//     required this.imagePath,
//     required this.title,
//     required this.subtitle,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.w),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             imagePath,
//             width: 150.w,
//             height: 150.h,
//             fit: BoxFit.contain,
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextThemes.heading2
//                 .copyWith(color: AppColors.blackBackground, fontSize: 24.sp),
//           ),
//           Text(
//             subtitle,
//             textAlign: TextAlign.center,
//             style: TextThemes.bodyText
//                 .copyWith(color: AppColors.greyMedium, fontSize: 16.sp),
//           ),
//           SizedBox(height: 20.h),
//         ],
//       ),
//     );
//   }
// }
