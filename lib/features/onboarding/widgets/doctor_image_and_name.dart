import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/theming/strings.dart';
import 'package:flutter_advanced_complete_course/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndName extends StatelessWidget {
  const DoctorImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.15, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Center(
            child: Text(
              Strings.onBoardingSlogan,
              style: TextStyles.font32BlueBold.copyWith(
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
