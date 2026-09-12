import 'package:api/CORE/theming/style.dart';
import 'package:flutter/material.dart';
// استيراد مكتبة فلاتر الأساسية لبناء الواجهات.

import 'package:flutter_screenutil/flutter_screenutil.dart'; 
// استيراد مكتبة ScreenUtil لتكييف وتجاوب الأبعاد مع شاشات الهواتف المختلفة.

class RememberMeAndForgotPassword extends StatefulWidget {
  // ويدجت من نوع StatefulWidget لأنها تحتوي على حالة متغيرة (حالة تفعيل أو إلغاء تفعيل الـ Checkbox).

  final VoidCallback onForgotPasswordPressed;
  // متغير لتمرير دالة التنفيذ (الحدث) عند الضغط على زر "نسيت كلمة المرور".

  const RememberMeAndForgotPassword({
    super.key,
    required this.onForgotPasswordPressed,
  });

  @override
  State<RememberMeAndForgotPassword> createState() => _RememberMeAndForgotPasswordState();
}

class _RememberMeAndForgotPasswordState extends State<RememberMeAndForgotPassword> {
  bool isRememberMe = false; 
  // متغير لتخزين حالة الـ Checkbox (هل هو مفعل `true` أم لا `false`).

  @override
  Widget build(BuildContext context) {
    return Row(
      // Row: ترتيب العناصر بداخله بشكل أفقياً (جنب لجنب).
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // لتووزيع العناصر بحيث يكون قسم (تذكرني) على أقصى اليسار/اليمين وزر (نسيت كلمة المرور) في الطرف المقابل.
      children: [
        
        // --- القسم الأول: خانة الاختيار "Remember me" مع النص ---
        Row(
          children: [
            SizedBox(
              height: 24.h,
              width: 24.w,
              child: Checkbox(
                // Checkbox: مربع اختيار للتفعيل أو الإلغاء.
                value: isRememberMe,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value ?? false;
                    // تحديث الحالة وتغيير قيمة المتغير بناءً على تفاعل المستخدم.
                  });
                },
                activeColor: Colors.green, 
                // لون خلفية المربع عندما يتم تفعيله (ليتطابق مع ثيم الزر الأخضر).
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                // جعل حواف مربع الاختيار دائرية بشكل بسيط وخفيف.
              ),
            ),
            SizedBox(width: 8.w),
            // مسافة أفقية صغيرة للفصل بين المربع والنص التابع له.
            Text(
              "Remember me",
                   style:TextStyles.fontgreen3,
            ),
            // النص التوضيحي بجانب مربع الاختيار.
          ],
        ),

        // --- القسم الثاني: زر "Forgot Password?" ---
        TextButton(
          // TextButton: زر نصي بدون خلفية، مخصص للروابط أو الأزرار البسيطة.
          onPressed: widget.onForgotPasswordPressed,
          // تنفيذ الدالة الممررة من الخارج عند الضغط عليه.
          child: Text(
            "Forgot Password?",
            style:TextStyles.fontgreen3,
          ),
        ),
      ],
    );
  }
}