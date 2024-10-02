import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:fraction/core/constants/image_paths.dart';
import '../widgets/game_grid_widget.dart';
import '../../../../core/constants/app_colors.dart';
import '../widgets/fraction_display_widget.dart';
import '../widgets/progress_bar_widget.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int purpleColumns = 5;
  int cyanRows = 6;
  Set<int> selectedSquares = {};
  double progress = 1.0;
  int totalSquares = 30;
  int targetSelected = 4;
  int questionsRemaining = 3;

  bool highlightGreen = false;
  bool showCelebration = false;
  bool showFinalCelebration = false;

  Random random = Random();

  @override
  void initState() {
    super.initState();
    generateNewFraction();
  }

  // new fraction with random columns, rows, and target
  void generateNewFraction() {
    setState(() {
      int num1 = random.nextInt(10) + 1;
      int num2 = random.nextInt(10) + 1;
      totalSquares = num1 * num2;
      targetSelected = random.nextInt(totalSquares - 1) + 1;

      selectedSquares.clear();
      purpleColumns = num1;
      cyanRows = num2;
    });
  }

  // column update and resets the selected squares
  void updatePurpleColumns(int newColumns) {
    setState(() {
      purpleColumns = newColumns.clamp(1, 10);
      selectedSquares.clear();
    });
  }

  // row update and resets the selected squares
  void updateCyanRows(int newRows) {
    setState(() {
      cyanRows = newRows.clamp(1, 10);
      selectedSquares.clear();
    });
  }

  // Toggles the selection of a square in the grid
  void toggleSquareSelection(int index) {
    setState(() {
      if (selectedSquares.contains(index)) {
        selectedSquares.remove(index);
      } else {
        selectedSquares.add(index);
      }
    });
  }

  // Checks the answer and triggers celebration or final celebration
  void checkAnswer() {
    if (selectedSquares.length == targetSelected) {
      triggerCelebration();
    }
  }

  // Triggers the celebration and handles the final question scenario
  void triggerCelebration() {
    setState(() {
      questionsRemaining--;
      progress = questionsRemaining / 3;
      highlightGreen = true;
      showCelebration = true;
    });

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        highlightGreen = false;
        showCelebration = false;

        if (questionsRemaining == 0) {
          showFinalCelebration = true;
          Future.delayed(Duration(seconds: 5), resetGame);
        } else {
          generateNewFraction();
        }
      });
    });
  }

  // Resets the game to its initial state after the final celebration
  void resetGame() {
    setState(() {
      showFinalCelebration = false;
      questionsRemaining = 3;
      generateNewFraction();
    });
  }

  Widget buildProgressBar() {
    return FractionProgressBar(progress: progress);
  }

  Widget buildActionBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: AppColors.white),
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: Icon(Icons.refresh, color: AppColors.white),
            onPressed: generateNewFraction,
          ),
          Row(
            children: [
              Icon(Icons.star, color: AppColors.greenBackground, size: 24.w),
              SizedBox(width: 4.w),
              Icon(Icons.star, color: AppColors.greenBackground, size: 24.w),
            ],
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward, color: AppColors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildGameGrid() {
    return Column(
      children: [
        buildProgressBar(),
        SizedBox(height: 10.h),
        buildActionBar(),
        SizedBox(height: 10.h),
        FractionDisplayWidget(
          selectedCount: targetSelected,
          totalSquares: totalSquares,
        ),
        SizedBox(height: 30.h),
        GameGridWidget(
          purpleColumns: purpleColumns,
          cyanRows: cyanRows,
          selectedSquares: selectedSquares,
          toggleSquareSelection: toggleSquareSelection,
          updatePurpleColumns: updatePurpleColumns,
          updateCyanRows: updateCyanRows,
          onReset: generateNewFraction,
          highlightGreen: highlightGreen,
          showCelebration: showCelebration,
        ),
        SizedBox(height: 30.h),
        ElevatedButton(
          onPressed: checkAnswer,
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
    );
  }

  Widget buildFinalCelebration() {
    return Center(
      child: Lottie.asset(
        ImagePaths.cup,
        width: 200.w,
        height: 200.h,
        repeat: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: showFinalCelebration
                ? buildFinalCelebration()
                : buildGameGrid(),
          ),
        ),
      ),
    );
  }
}
