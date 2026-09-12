import 'package:api/CORE/theming/colors.dart';
import 'package:api/CORE/theming/font_wight_helper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle get fontBLack1=> TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWightHelper.extrabold,
        color: Colors.black,
      );



  static TextStyle get fontBLack2  => TextStyle(
    
        fontSize: 14.sp,
        fontWeight: FontWightHelper.extrabold,
        color: AppColors.font1,
      );

  static TextStyle get fontgreen1 => TextStyle(
    
        fontSize: 32.sp,
        fontWeight: FontWightHelper.extrabold,
        color: AppColors.font2,
      );
  static TextStyle get fontgreen2 => TextStyle(
    
        fontSize: 18.sp,
        fontWeight: FontWightHelper.medium,
        color: AppColors.font2,
      );
  static TextStyle get fontgreen3 => TextStyle(
    
        fontSize: 10.sp,
        fontWeight: FontWightHelper.light,
        color: AppColors.font2,
      );
  static TextStyle get fontgreen4 => TextStyle(
    
        fontSize: 14.sp,
        fontWeight: FontWightHelper.bold,
        color: AppColors.font2,
      );
  static TextStyle get fontwhite1 => TextStyle(
    
        fontSize: 14.sp,
        fontWeight: FontWightHelper.regular,
        color: AppColors.font3,
      );

}