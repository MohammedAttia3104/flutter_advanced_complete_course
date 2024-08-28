import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final TextStyle btnStyle;
  final void Function()? onPressed;
  final double? btnWidth;
  final double? btnHeight;
  final double? btnPaddingHorizontal;
  final double? btnPaddingVertical;
  final double? btnBorderRadius;
  final WidgetStateProperty<Color?>? btnBackground;

  const AppTextButton({
    super.key,
    required this.text,
    required this.btnStyle,
    this.onPressed,
    this.btnWidth,
    this.btnHeight,
    this.btnPaddingHorizontal,
    this.btnPaddingVertical,
    this.btnBackground,
    this.btnBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(
          Size(
            btnWidth?.w ?? double.maxFinite,
            btnHeight?.h ?? 48.h,
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: btnPaddingHorizontal?.w ?? 12.w,
            vertical: btnPaddingVertical?.h ?? 14.h,
          ),
        ),
        backgroundColor: btnBackground ??
            WidgetStateProperty.all(
              ColorsManager.mainBlue,
            ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnBorderRadius?.r ?? 16.r),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: btnStyle,
      ),
    );
  }
}
