import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/theming/colors.dart';
import 'package:flutter_advanced_complete_course/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/strings.dart';
import '../../../../core/theming/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: Strings.emailHintText,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isEmailValid(value)) {
                      return 'Please enter a valid email';
                    }
                  },
                ),
                verticalSpace(16),
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: Strings.passwordHintText,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  isObscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    }
                  },
                ),
                verticalSpace(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
