import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/features/onboarding/onboarding_screen.dart';


class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    // flutter screen util
    return  MaterialApp(
        title: 'DocDoc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const OnboardingScreen(),
    );
  }
}
