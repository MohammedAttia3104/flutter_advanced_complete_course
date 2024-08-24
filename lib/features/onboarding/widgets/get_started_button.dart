import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/theming/colors.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_advanced_complete_course/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 48.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
      child: Text(
        Strings.onBoardingGetStarted,
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
