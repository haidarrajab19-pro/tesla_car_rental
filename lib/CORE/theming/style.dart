import 'package:api/CORE/theming/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle get font24BLack700Weight => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      );

  static TextStyle get font32Bgreen => TextStyle(
    
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.mainGreen,
      );
}