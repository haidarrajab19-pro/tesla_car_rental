import 'package:api/CORE/theming/colors.dart';
import 'package:flutter/material.dart';
// استيراد مكتبة فلاتر الأساسية لبناء عناصر الواجهة والتحكم بها.

import 'package:flutter_screenutil/flutter_screenutil.dart'; 
// استيراد مكتبة ScreenUtil لتكييف وتثبيت أبعاد العناصر بناءً على أحجام الشاشات المختلفة.

class AppTextButton extends StatelessWidget {
// تعريف ويدجت جديدة مخصصة للأزرار (Stateless) لأن شكلها ثابت ولا يحتاج لتغيير حالتها الداخلية.

  final EdgeInsetsGeometry? borderRadius;
  // متغير لتحديد حواف وزوايا الزر الخارجية (بشكل مرن قابل للتعديل).

  final Color? backgroundColor;
  // متغير لتحديد لون خلفية الزر.

  final double? horizontalPadding;
  // متغير لتحديد الحشوة والهوامش الأفقية (يمين ويسار) داخل الزر.

  final double? verticalPadding;
  // متغير لتحديد الحشوة والهوامش العمودية (أعلى وأسفل) داخل الزر.

  final double? buttonWidth;
  // متغير لتحديد عرض الزر.

  final double? buttonHeight;
  // متغير لتحديد ارتفاع الزر.

  final String buttonText;
  // متغير لتخزين النص الذي سيظهر داخل الزر (إلزامي).

  final TextStyle textStyle;
  // متغير لتنسيق شكل ونوع وحجم لون الخط داخل الزر (إلزامي).

  final VoidCallback onPressed;
  // متغير لتخزين الدالة أو الكود الذي سيتم تنفيذه عند الضغط على الزر (إلزامي).

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });
  // الكونستركتور (Constructor) لاستقبال القيم والخصائص عند استدعاء الزر في الشاشات الأخرى، وربط القيم الإلزامية بكلمة required.

  @override
  Widget build(BuildContext context) {
    // الدالة المسؤولة عن بناء وتصميم شكل الزر وعرضه على الشاشة.

    return TextButton(
      // بناء زر نصي أساسي من فلاتر (TextButton) للتفاعل والضغط.

      style: ButtonStyle(
        // دالة مخصصة للتحكم بالخصائص والتصميم المتقدم للزر (مثل اللون والشكل والحجم).

        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          // التحكم بشكل حدود وحواف الزر الخارجية لتكون دائرية.

          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius as double? ?? 16.r),
          ),
          // تطبيق زوايا دائرية مقوسة بقيمة مخصصة أو بقيمة افتراضية (12) متجاوبة مع الشاشات.
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? AppColors.appGreen,
        ),
        // تحديد لون خلفية الزر (إما اللون الممرر أو اللون الأخضر كقيمة افتراضية تتناسب مع تصميمك).

        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 120.w,
            vertical: verticalPadding?.h ?? 5.h,
          ),
        ),
        // ضبط الهوامش الداخلية للزر أفقياً وعمودياً مع دعم التكيف عبر ScreenUtil.

        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth?.w ?? double.infinity,
            buttonHeight?.h ?? 50.h,
          ),
        ),
        // تثبيت أبعاد الزر (العرض ليمتد على كامل الشاشة افتراضياً `double.infinity` والارتفاع 50).
      ),
      onPressed: onPressed,
      // تمرير وإلزامية تنفيذ الدالة البرمجية عند النقر على الزر.

      child: Text(
        buttonText,
        style: textStyle,
      ),
      // عرض النص الأساسي داخل الزر مع تطبيق التنسيق والخط الممرر له.
    );
  }
}