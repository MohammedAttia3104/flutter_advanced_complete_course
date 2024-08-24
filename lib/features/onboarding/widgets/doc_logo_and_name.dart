import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_advanced_complete_course/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        horizontalSpace(8),
        Text(
          Strings.appName,
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
