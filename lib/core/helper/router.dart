import 'package:flutter/material.dart';

import '../../features/home/presentation/screens/game_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../constants/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.mainScreen:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingScreen(),
      );
case AppRoutes.gameScreen:
      return MaterialPageRoute(
        builder: (context) => GameScreen(),
      );
    
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text("No path for ${settings.name}"),
                ),
              ));
  }
}
