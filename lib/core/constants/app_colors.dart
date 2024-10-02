import 'package:flutter/material.dart';

class AppColors {
  // Grey Shades
  static const Color grey = Color(0xFF8E8E8E);
  static const Color greyLight = Color(0xFFEFEFEF);
  static const Color greyDark = Color(0xFF53587A);
  static const Color greyMedium = Color(0xFFAFAFAF);
  static const Color greySoft = Color(0xFFF1F1F1);
  static const Color greyBackground = Color(0xFFDFDFDF);
  static const Color greyBarelyMedium = Color(0xFFA1A5C1);
  static const Color purple = Color(0xFF9C27B0);
  static const Color cyen = Color(0xFF00BCD4);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey700 = Color(0xFF616161);

  //red Colors
  static const Color redOne = Color(0xFFF44336);
  static const Color redBackground = Color(0xFF00740e);

  // Background Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color blackBackground = Color(0xFF171C26);
  static const Color greenBackground = Color(0xFF28C76F);
  static const Color whiteBackground = Color(0xFFFFFFFF);
  static const Color darkBackground = Color(0xFF252525);

  // Primary Colors
  static Color primary = Color.fromARGB(255, 75, 99, 125);
  static const Color lighterPrimary = Color(0XFFFFCC90);
  static const Color darkerPrimary = Color(0XFFBD6C0C);

  // Secondary Colors
  static const Color secondary = Color(0XFF48525B);
  static const Color secondaryDark = Color(0xFF234F68);
  static const Color secondaryLight = Color(0xFFA1A5C1);

  // Accent Colors
  static const Color greenCyan = Color(0xFF337E89);
  static const Color whatsappGreen = Color(0xFF25D366);
  static const Color facebookBlue = Color(0xFF0C86E1);
  static const Color instaColor = Color(0xFFFB2877);
  static const Color purpleAccent = Color(0xFFD500B3);

  // Text Colors
  static const Color headingText = Color(0xFF5E5873);
  static const Color bodyText = Color(0xFF6F7F92);
  static const Color disabledText = Color(0xFF9DB2CE);
  static const Color formText = Color(0xFF444150);
  static const Color chatText = Color(0xFFEEEEEE);
  static const Color textOnDark = Color(0xFFEEEEEE);
  static const Color textOnLight = Color(0xFF252B41);
  static const Color skipTextColor = Color(0xFF2A2A2A);
  static const Color onboardingSecondaryText = Color(0xFF292929);
  static const Color dateText = Color(0xFF747474);
  static const Color postText = Color(0xFF10141A);
  static const Color postTextLighter = Color(0xFF526875);
  static const Color postCommentText = Color(0xFFBBB8B8);
  static const Color formTextStyleColor = Color(0xFF444150);
  static const Color titleText = Color(0xFF07142E);
  static const Color shadowColorCircle = Color(0xFFC7BFDE);

  // Button Colors
  static const Color buttonDark = Color(0xFF171C26);
  static const Color buttonLight = Color(0xFFE3E3E3);

  // Chart Colors
  static const Color pieChartGreen = Color(0xFF51C878);
  static const Color pieChartRed = Color(0xFFC40101);
  static const Color pieChartBlue = Color(0xFF0086FF);
  static const Color barChartGradientColor1 = Color(0xFFFDA800);
  static const Color barChartGradientColor2 = Color(0xFF001749);

  // Special Colors
  static const Color starColor = Color(0xFFFFC42D);
  static const Color splashGradientColor = Color(0xFF001749);
  static const Color splashGradientColor2 = Color(0xFF21628A);

  // Miscellaneous
  static const Color transparent = Colors.transparent;
  static const Color themeSwitchActive = Color(0xFF24272C);
  static const Color disabled = Color(0xFF9DB2CE);
  static const Color darkGreen = Color(0xFF007700);
  static const Color calenderHourIndicatorColor = Color(0xFFCFCAE4);
  static const Color shadowColor = Color(0xFFC7BFDE);

  // Saudi Arabia Colors
  static const Color saudiPrimary = Color(0xFF5EB49C);
  static const Color saudiSecondary = Color(0xFF002E60);
  static const Color saudiTertiary = Color(0xFF606060);
  static const Color saudiAccent = Color(0xFFC8CB18);

  // Kuwait Colors
  static const Color kuwaitPrimary = Color(0xFF1E439E);
  static const Color kuwaitSecondary = Color(0xFF070707);
  static const Color kuwaitTertiary = Color(0xFFFFFFFF);

  // United Arab Emirates Colors
  static const Color uaePrimary = Color(0xFF007700);
  static const Color uaeSecondary = Color(0xFFD30029);
  static const Color uaeTertiary = Color(0xFFFFFFFF);
  static const Color uaeAccent = Color(0xFF281B03);

  // Qatar Colors
  static const Color qatarPrimary = Color(0xFF8A1538);

// Oman Colors
  static const Color omanPrimary = Color(0xFFC8102E);

// Bahrain Colors
  static const Color bahrainPrimary = Color(0xFFDA291C);

  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);

  // Gradient Helpers
  static RadialGradient createRadialGradient(Color color1, Color color2,
      {AlignmentGeometry alignment = Alignment.topCenter,
      double radius = 1.8,
      double focalRadius = 0.0}) {
    return RadialGradient(
      colors: [color1, color2],
      center: alignment,
      radius: radius,
    );
  }

  static RadialGradient differentRadialGradient(
    Color color1,
    Color color2,
  ) {
    return RadialGradient(
      colors: [color1, color2],
      focal: Alignment.topLeft,
      center: Alignment.bottomRight,
      radius: 0.2,
      focalRadius: 1,
      tileMode: TileMode.repeated,
    );
  }

  // Checkbox Active Color
  static MaterialStateProperty<Color?> checkboxActiveColor =
      MaterialStateProperty.resolveWith<Color>((states) {
    if (!states.contains(MaterialState.selected)) {
      return AppColors.darkBackground;
    }
    return AppColors.darkBackground;
  });
}
