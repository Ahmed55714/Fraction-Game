// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lawyer/core/constants/app_colors.dart';
// import 'package:lawyer/core/constants/lang_keys.dart';
// import 'package:lawyer/core/models/button_model.dart';
// import 'package:lawyer/core/widgets/rounded_button.dart';

// class OnBoardingControls extends StatelessWidget {
//   final int currentPage;
//   final int totalPages;
//   final VoidCallback onNext;
//   final VoidCallback onFinish;

//   const OnBoardingControls({
//     Key? key,
//     required this.currentPage,
//     required this.totalPages,
//     required this.onNext,
//     required this.onFinish,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Directionality(
//           textDirection: ui.TextDirection.rtl,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(totalPages, (index) => _buildIndicator(index)),
//           ),
//         ),
//         SizedBox(height: 20.h),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.w),
//           child: RoundedButton(
//             model: ButtonModel(
//               onPress: currentPage == totalPages - 1 ? onFinish : onNext, // Updated
//               color: AppColors.redBackground,
//               textColor: AppColors.white,
//               title: currentPage == totalPages - 1 ? LangKeys.finish : LangKeys.next, // Updated
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildIndicator(int index) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 4.w),
//       width: 10.w,
//       height: 10.h,
//       decoration: BoxDecoration(
//         color: currentPage == index ? AppColors.primary : AppColors.greyMedium,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }
