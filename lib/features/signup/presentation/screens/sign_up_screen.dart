import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.signUpCreateAccount,
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  Strings.signUpCreateAccountDescription,
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                const Column(
                  children: [
                    SignUpForm(),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
