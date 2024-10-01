// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'dart:ui' as ui;
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lawyer/core/constants/image_paths.dart';
// import 'package:lawyer/core/constants/app_colors.dart';
// import 'package:lawyer/core/constants/text_themes.dart';
// import 'package:lawyer/core/constants/lang_keys.dart';
// import 'package:lawyer/core/helper/navigation_helper.dart';
// import 'package:lawyer/core/models/button_model.dart';
// import 'package:lawyer/core/widgets/rounded_button.dart';
// import '../../../../core/constants/routes.dart';
// import '../widgets/skip_button.dart';

// class OnBoardingDetailsScreen extends StatefulWidget {
//   const OnBoardingDetailsScreen({super.key});

//   @override
//   _OnBoardingDetailsScreenState createState() =>
//       _OnBoardingDetailsScreenState();
// }

// class _OnBoardingDetailsScreenState extends State<OnBoardingDetailsScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     final isArabic = context.locale.languageCode == 'ar';

//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             children: [
//               _buildPageContent(
//                 context,
//                 imagePath: ImagePaths.onBoarding,
//                 title: LangKeys.getLegalAdvice,
//                 subtitle: LangKeys.consultTopLawyers,
//               ),
//               _buildPageContent(
//                 context,
//                 imagePath: ImagePaths.onBoarding,
//                 title: LangKeys.makeLegalContracts,
//                 subtitle: LangKeys.getLegal,
//               ),
//             ],
//           ),
//           Positioned(
//             top: 30.h,
//             left: isArabic ? 16.w : null,
//             right: isArabic ? null : 16.w,
//             child: SkipButton(
//               onPressed: () {
//                 Navigation().navigateTo(routeName: AppRoutes.servayScreen);
//               },
//             ),
//           ),
//           Positioned(
//             bottom: 20.h,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(2, (index) => _buildIndicator(index)),
//                 ),
//                 SizedBox(height: 20.h),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 12.w),
//                   child: RoundedButton(
//                     model: ButtonModel(
//                       onPress: () {
//                         if (_currentPage < 1) {
//                           _pageController.nextPage(
//                             duration: Duration(milliseconds: 300),
//                             curve: Curves.ease,
//                           );
//                         } else {
//                           Navigation()
//                               .navigateTo(routeName: AppRoutes.servayScreen);
//                         }
//                       },
//                       color: AppColors.primary,
//                       textColor: AppColors.white,
//                       title:
//                           _currentPage == 1 ? LangKeys.finish : LangKeys.next,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPageContent(
//     BuildContext context, {
//     required String imagePath,
//     required String title,
//     required String subtitle,
//   }) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 24.w),
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

//   Widget _buildIndicator(int index) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 4.w),
//       width: 10.w,
//       height: 10.h,
//       decoration: BoxDecoration(
//         color: _currentPage == index ? AppColors.primary : AppColors.greyMedium,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }
