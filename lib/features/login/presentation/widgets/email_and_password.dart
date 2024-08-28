import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/strings.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPasswordWidget extends StatefulWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  State<EmailAndPasswordWidget> createState() => _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState extends State<EmailAndPasswordWidget> {
  bool _isObscure = true;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          controller: _emailController,
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
          controller: _passwordController,
          hintText: Strings.passwordHintText,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              child: Icon(_isObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined)),
          isObscureText: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(24),
      ],
    );
  }
}
