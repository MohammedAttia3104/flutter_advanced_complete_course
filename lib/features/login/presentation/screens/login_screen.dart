import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/widgets/email_and_password.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/strings.dart';
import '../../../../core/theming/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.loginWelcomeBack,
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  Strings.loginWelcomeBackSub,
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                const EmailAndPasswordWidget(),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                verticalSpace(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
