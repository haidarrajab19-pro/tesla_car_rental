import 'package:api/CORE/theming/style.dart';
import 'package:flutter/gestures.dart';
// استيراد مكتبة التفاعل لإضافة خاصية النقر (Tap) على كلمات محددة داخل النص.

import 'package:flutter/material.dart';
// استيراد مكتبة فلاتر الأساسية لبناء واجهات المستخدم.

import 'package:flutter_screenutil/flutter_screenutil.dart'; 
// استيراد مكتبة ScreenUtil لضمان تباعد وأحجام نصوص متجاوبة مع مختلف الشاشات.

class TermsAndSignUpSection extends StatelessWidget {
  // ويدجت مستقلة وثابتة (Stateless) لعرض النصوص السفلية الخاصة بالشروط والأحكام وزر الانتقال.

  const TermsAndSignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Column: لترتيب النص الأول (الشروط) والنص الثاني (إنشاء حساب) بشكل عمودي تحت بعضهما.
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        // --- النص الأول: الشروط والأحكام (Terms & Conditions) ---
        RichText(
          // RichText: يتيح لنا دمج عدة نصوص بأنماط وألوان مختلفة داخل جملة واحدة متصلة.
          textAlign: TextAlign.center,
          // لسنترة النص في منتصف الشاشة تماماً.
          text: TextSpan(
            style:TextStyles.fontwhite1,
            children: [
              const TextSpan(text: "By logging, you agree to our "),
              
              // كلمة "Terms & Conditions" بلون أخضر وقابلة للنقر
              TextSpan(
                text: "Terms & Conditions",
                style: TextStyles.fontgreen4,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Terms & Conditions Clicked");
                    // هنا تضيف كود فتح صفحة الشروط والأحكام
                  },
              ),
              
              const TextSpan(text: " and "),
              
              // كلمة "Privacy Policy" بلون أخضر وقابلة للنقر
              TextSpan(
                text: "Privacy Policy",
                style: TextStyles.fontgreen4,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Privacy Policy Clicked");
                    // هنا تضيف كود فتح صفحة سياسة الخصوصية
                  },
              ),
            ],
          ),
        ),

        SizedBox(height: 20.h), 
        // مسافة عمودية للفصل بين قسم الشروط وزر الانتقال بالأسفل.

        // --- النص الثاني: هل تمتلك حساباً؟ تسجيل (Sign Up) ---
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyles.fontwhite1,
            children: [
              const TextSpan(text: "Already have an account? "),
              
              // كلمة "Sign Up" بلون أخضر وبارز لتشجيع المستخدم على النقر
              TextSpan(
                text: "Sign Up",
                style: TextStyles.fontgreen4,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Sign Up Clicked");
                    // هنا تضيف كود الانتقال لصفحة التسجيل أو إنشاء الحساب
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}