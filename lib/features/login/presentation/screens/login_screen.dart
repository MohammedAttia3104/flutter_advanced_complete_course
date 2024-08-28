import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/widgets/do_not_have_account_text.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/widgets/email_and_password.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/widgets/terms_and_conditions_widget.dart';
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
                const EmailAndPassword(),
                verticalSpace(16),
                Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(32),
                    AppTextButton(
                      text: Strings.loginBtn,
                      btnStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {},
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsWidget(),
                    verticalSpace(60),
                    const DoNotHaveAccountText(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
