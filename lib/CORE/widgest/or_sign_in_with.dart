import 'package:api/CORE/theming/style.dart';
import 'package:flutter/material.dart';
// استيراد مكتبة فلاتر الأساسية لبناء واجهات المستخدم.

import 'package:flutter_screenutil/flutter_screenutil.dart'; 
// استيراد مكتبة ScreenUtil لجعل الأبعاد متجاوبة مع مختلف أحجام الشاشات.

class OrSignInWithDivider extends StatelessWidget {
  // ويدجت مستقلة وثابتة (Stateless) لأنها تعرض شكلاً ثابتاً لا يحتاج لتخزين حالات متغيرة.

  final String text;
  // متغير نصي مرن لتمرير الكلمة المطلوبة (مثلاً: "Or Sign in With").

  const OrSignInWithDivider({
    super.key,
    this.text = "Or Sign in with",
    // قيمة افتراضية للنص في حال لم يتم إرساله عند الاستدعاء.
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // Row: لتوزيع العناصر بداخله بشكل أفقي (خط، ثم نص، ثم خط).
      children: [
        
        // --- الخط الفاصل الأيسر ---
        Expanded(
          // Expanded: تجعل الخط يأخذ المساحة المتاحة المتبقية ليمتد بمرونة.
          child: Divider(
            color: Colors.green, 
            // لون الخط الأخضر ليتناسب مع تصميم الثيم العام.
            thickness: 1.5, 
            // سمك وخط الفاصل.
            endIndent: 10.w, 
            // مسافة فراغ بسيطة بين الخط الأيسر والنص المنتصف.
          ),
        ),

        // --- النص الأوسط ---
        Text(
          text,
          style:TextStyles.fontgreen3
        ),

        // --- الخط الفاصل الأيمن ---
        Expanded(
          // Expanded: ليمتد الخط الأيمن بباقي المساحة بشكل متناسق مع الأيسر.
          child: Divider(
            color: Colors.green,
            thickness: 1.5,
            indent: 10.w, 
            // مسافة فراغ بسيطة بين النص والخط الأيمن.
          ),
        ),
      ],
    );
  }
}