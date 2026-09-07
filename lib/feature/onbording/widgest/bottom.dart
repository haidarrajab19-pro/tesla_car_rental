import 'package:api/CORE/routing/helpers/extension.dart';
import 'package:api/CORE/routing/routs.dart';
import 'package:api/CORE/theming/colors.dart';
import 'package:api/CORE/theming/style.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return    // 2. النص الوصفي
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.radialGreenCenter,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.w),
                ),
              ),
            onPressed: () {
           context.pushNamed(Routes.LoginScreen); // أو حسب الاسم المكتوب في ملف الـ routs.dart
            },
            
            child: Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: TextStyles.font24BLack700Weight.copyWith(
                color: AppColors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ),
        ) ;
    
  }
}