import 'dart:math' as math;
import 'package:api/CORE/theming/colors.dart';
import 'package:api/CORE/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(

      alignment: Alignment.center,
      children: [
        // 1. عنصر الخلفية المائل ( النقشة / اللوغو الخلفي )
        Transform.rotate(
          angle: 27.55 * (math.pi / 180),
          child: SvgPicture.asset(
            'assets/svgs/logod.svg',
            width: 360.w,
            fit: BoxFit.contain,
          ),
        ),

        // 2. المحتوى الأمامي (النصوص واللوغو اللفظي)
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's pick up a",
              textAlign: TextAlign.center,
              style: TextStyles.font24BLack700Weight.copyWith(
                color: AppColors.white,
                fontSize: 32.sp,
              ),
            ),
            SizedBox(height: 10.h),
            SvgPicture.asset(
              'assets/svgs/teslalo.svg',
              height: 30.h,
            ),
            SizedBox(height: 10.h),
            Text(
              "for you",
              textAlign: TextAlign.center,
              style: TextStyles.font24BLack700Weight.copyWith(
                color: AppColors.white,
                fontSize: 32.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}