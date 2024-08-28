import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_advanced_complete_course/core/theming/styles.dart';
import 'package:flutter_advanced_complete_course/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_advanced_complete_course/features/onboarding/widgets/doctor_image_and_name.dart';
import 'package:flutter_advanced_complete_course/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Column(
                children: [
                  const DocLogoAndName(),
                  verticalSpace(16),
                  const DoctorImageAndName(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      children: [
                        Text(
                          Strings.onBoardingSubSlogan,
                          style: TextStyles.font13GrayRegular,
                          textAlign: TextAlign.center,
                        ),
                        verticalSpace(30),
                        const GetStartedButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
