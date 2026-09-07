import 'package:api/CORE/theming/colors.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_application_1/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Carimageandtext extends StatelessWidget {
  const Carimageandtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. تراكب الشعار الخلفي مع صورة السيارة
        SizedBox(
          height: 300.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // شعار الخلفية المائل (Doc / DocTesla)
              Positioned(
                top: 5.h,
                child: SvgPicture.asset(
                  'assets/svgs/tesla.svg',
                  width: 250.w,
                  colorFilter: ColorFilter.mode(
                    AppColors.grey.withOpacity(0.15),
                    BlendMode.srcIn,
                  ),
                ),
              ),

              // صورة السيارة مع إمكانية تحريكها يميناً أو يساراً
              Positioned(
                // top: 20.h,
                right: 0.w,
                // left: 0,
                child: Image.asset(
                  'assets/images/car.png',
                  height: 300.h,
                  width: 200.w,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 12.h),

     
      ],
    );
  }
}