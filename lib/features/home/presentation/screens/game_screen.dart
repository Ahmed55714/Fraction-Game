import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/game_grid_widget.dart';
import '../../../../core/constants/app_colors.dart';
import '../widgets/fraction_display_widget.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int purpleColumns = 5; // Number of columns
  int cyanRows = 6; // Number of rows
  Set<int> selectedSquares = {}; // Track selected squares by their index

  void updatePurpleColumns(int newColumns) {
    setState(() {
      purpleColumns =
          newColumns.clamp(1, 10); // Ensure columns stay between 1 and 10
      selectedSquares.clear(); // Clear selection when grid size changes
    });
  }

  void updateCyanRows(int newRows) {
    setState(() {
      cyanRows = newRows.clamp(1, 10); // rows stay between 1 and 10
      selectedSquares.clear(); // Clear selection when grid size changes
    });
  }

  void toggleSquareSelection(int index) {
    setState(() {
      if (selectedSquares.contains(index)) {
        selectedSquares.remove(index); // Deselect square
      } else {
        selectedSquares.add(index); // Select square
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int totalSquares = purpleColumns * cyanRows;
    int selectedCount = selectedSquares.length;

    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FractionDisplayWidget(
              selectedCount: selectedCount,
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
)
,
            SizedBox(height: 30.h),
            ElevatedButton(
              onPressed: () {
                // Logic for submission or validation
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
