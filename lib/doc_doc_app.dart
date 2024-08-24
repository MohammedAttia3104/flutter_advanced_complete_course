import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/routing/app_router.dart';
import 'package:flutter_advanced_complete_course/core/routing/routes.dart';
import 'package:flutter_advanced_complete_course/core/theming/colors.dart';
import 'package:flutter_advanced_complete_course/features/onboarding/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocDocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'DocDoc',
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.onBoardingScreen,
          debugShowCheckedModeBanner: false,
        ));
  }
}
