import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_advanced_complete_course/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter_advanced_complete_course/features/signup/presentation/widgets/already_have_an_account.dart';
import 'package:flutter_advanced_complete_course/features/signup/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../controllers/sign_up_cubit.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Strings.signUpCreateAccount,
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                Strings.signUpCreateAccountDescription,
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const SignUpForm(),
                  verticalSpace(30),
                  AppTextButton(
                    text: Strings.signUpBtn,
                    btnStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsWidget(),
                  verticalSpace(30),
                  const AlreadyHaveAnAccount(),
                  const SignUpBlocListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenDoSignup(BuildContext context) {
    final signUpCubit = context.read<SignUpCubit>();
    if (signUpCubit.formKey.currentState!.validate()) {
      signUpCubit.emitSignUpStates();
    }
  }
}
