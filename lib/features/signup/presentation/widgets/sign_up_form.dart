import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_advanced_complete_course/core/widgets/app_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../login/presentation/widgets/password_validation.dart';
import '../controllers/sign_up_cubit.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscurePassword = true;
  bool isObscurePasswordConfirmation = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
              controller: context.read<SignUpCubit>().nameController,
              hintText: Strings.nameHintText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name is required';
                }
              }),
          verticalSpace(16),
          AppTextFormField(
              controller: context.read<SignUpCubit>().emailController,
              hintText: Strings.emailHintText,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Email is required';
                }
              }),
          verticalSpace(16),
          AppTextFormField(
              controller: context.read<SignUpCubit>().phoneController,
              keyboardType: TextInputType.phone,
              hintText: Strings.phoneHintText,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Phone is required';
                }
              }),
          verticalSpace(16),
          AppTextFormField(
              controller: context.read<SignUpCubit>().passwordController,
              hintText: Strings.passwordHintText,
              isObscureText: isObscurePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscurePassword = !isObscurePassword;
                  });
                },
                child: Icon(
                  isObscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPasswordValid(value)) {
                  return 'Password is required';
                }
              }),
          verticalSpace(16),
          AppTextFormField(
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            hintText: Strings.confirmPasswordHintText,
            isObscureText: isObscurePasswordConfirmation,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscurePasswordConfirmation =
                      !isObscurePasswordConfirmation;
                });
              },
              child: Icon(
                isObscurePasswordConfirmation
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password confirmation is required';
              } else if (value !=
                  context.read<SignUpCubit>().passwordController.text) {
                return 'Passwords do not match';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
