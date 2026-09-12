import 'package:flutter/material.dart';
// استيراد مكتبة فلاتر الأساسية لبناء عناصر الواجهة.

import 'package:flutter_screenutil/flutter_screenutil.dart'; 
// استيراد مكتبة ScreenUtil لتكييف الأبعاد وتجنب أي اختلاف بين الشاشات.

class SocialIconsRow extends StatelessWidget {
  // ويدجت مستقلة وثابتة (Stateless) لأنها تعرض الأيقونات بشكل دائم دون الحاجة لتغيير حالتها.

  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Row: لتوزيع الأيقونات الدائرية بشكل أفقي وجنب بعضها.
      mainAxisAlignment: MainAxisAlignment.center,
      // لضبط الأيقونات في منتصف الشاشة تماماً.
      children: [
        // الأيقونة الأولى: فيسبوك (أو أي أيقونة وسائل إجتماعية)
        _buildSocialCircle(
          icon: Icons.facebook,
          onTap: () {
            print("Facebook Clicked");
          },
        ),
        
        SizedBox(width: 20.w), // مسافة أفقية للفصل بين الدوائر
        
        // الأيقونة الثانية: البريد الإلكتروني (Email)
        _buildSocialCircle(
          icon: Icons.email,
          onTap: () {
            print("Email Clicked");
          },
        ),
        
        SizedBox(width: 20.w), // مسافة أفقية للفصل بين الدوائر
        
        // الأيقونة الثالثة: الهاتف (Phone / iPhone)
        _buildSocialCircle(
          icon: Icons.phone,
          onTap: () {
            print("Phone Clicked");
          },
        ),
      ],
    );
  }

  // دالة مساعدة (Helper Method) لبناء الدائرة والأيقونة بداخلها لتجنب تكرار الكود
  Widget _buildSocialCircle({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      // GestureDetector: لجعل الدائرة قابلة للنقر والتفاعل عند الضغط عليها.
      onTap: onTap,
      child: Container(
        // Container: لتحديد شكل وحجم ودائرة الخلفية (الدائرة الخضراء).
        width: 55.w,
        height: 55.h,
        decoration: const BoxDecoration(
          color: Colors.green, 
          // لون خلفية الدائرة أخضر (ليطابق ثيم التطبيق من الفيجما).
          shape: BoxShape.circle, 
          // جعل الحاوية تأخذ شكل دائرة كاملة (Circle).
        ),
        child: Icon(
          icon,
          color: Colors.black, 
          // لون الأيقونة من الداخل أسود تماماً مثل ما طلبت.
          size: 26.sp,
          // حجم الأيقونة لتكون متناسبة ومرتبة داخل الدائرة.
        ),
      ),
    );
  }
}