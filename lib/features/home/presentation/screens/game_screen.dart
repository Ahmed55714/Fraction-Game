import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fraction/features/home/presentation/widgets/game_grid_widget.dart';
import '../../../../core/constants/app_colors.dart';
import '../widgets/fraction_display_widget.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FractionDisplayWidget(),
            SizedBox(height: 30.h),
            GameGridWidget(),
            SizedBox(height: 30.h),
            ElevatedButton(
              onPressed: () {
                //fraction submission
              },
              child: Icon(
                Icons.check,
                size: 24.sp,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20.r),
                primary: AppColors.grey800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
