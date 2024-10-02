import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants/app_theme.dart';
import 'core/constants/bloc.dart';
import 'core/helper/router.dart' as router;
import 'features/onboarding/presentation/screens/onboarding_screen.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with AfterLayoutMixin, WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProvidersList,
      child: ScreenUtilInit(
        designSize: const Size(300, 500),
        builder: (context, child) => MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: "lawyer",
          localizationsDelegates: [
            ...context.localizationDelegates,
          ],
          supportedLocales: [
            ...context.supportedLocales,
          ],
          locale: context.locale,
          theme: buildAppTheme(context),
          home:
              //HomeLawyerScreen(),

              OnBoardingScreen(),
          onGenerateRoute: router.generateRoute,
        ),
      ),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);
  }
}
