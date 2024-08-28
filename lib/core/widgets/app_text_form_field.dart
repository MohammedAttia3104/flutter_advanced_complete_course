import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onEditingComplete;
  final Function(String?) validator;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final Widget? suffixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final Color? fillColorBackGround;
  final bool? isObscureText;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.contentPadding,
    required this.hintText,
    this.fillColorBackGround,
    this.keyboardType,
    this.onEditingComplete,
    this.suffixIcon,
    this.hintStyle,
    this.isObscureText,
    required this.validator,
    this.focusBorder,
    this.enableBorder,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      onEditingComplete: onEditingComplete,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14GrayRegular,
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3.w,
              ),
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3.w,
              ),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
        ),
        filled: true,
        fillColor: fillColorBackGround ?? ColorsManager.moreLightGray,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
