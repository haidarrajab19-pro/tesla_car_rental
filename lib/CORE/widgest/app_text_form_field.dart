import 'package:flutter/material.dart';

// استيراد مكتبة فلاتر الأساسية لبناء الواجهات والتحكم بالعناصر
class AppTextFormField extends StatelessWidget {
  // تعريف متغيرات الـ Widget لكي تكون قابلة للتخصيص من الخارج (Customizable)
  final EdgeInsetsGeometry? contentPadding; // الحشوة الداخلية (الهوامش داخل حقل الإدخال)
  final InputBorder? focusedBorder; // شكل الحدود عند الضغط على الحقل (Focus)
  final InputBorder? enabledBorder; // شكل الحدود والحقل في الوضع العادي (قبل الضغط)
  final TextStyle? inputTextStyle; // تنسيق ونمط الخط للنص الذي يكتبه المستخدم
  final TextStyle? hintStyle; // تنسيق ونمط الخط للنص التوضيحي (Hint)
  final String? hintText; // النص التوضيحي الذي يظهر داخل الحقل قبل الكتابة
  final String? labelText; // عنوان الحقل (Label) الذي قد يرتفع للأعلى عند الكتابة
  final Widget? suffixIcon; // أيقونة إضافية تظهر في أقصى اليمين أو اليسار داخل الحقل (مثل زر إظهار كلمة المرور)
  final bool? isObscureText; // تحديد ما إذا كان النص مخفياً (مثل كلمات المرور بـ النجوم أو النقاط)
  final TextEditingController? controller; // للتحكم بالنص المكتوب وقراءته أو تعديله برمجياً
  final String? Function(String?)? validator; // دالة للتحقق من صحة المدخلات (مثل التأكد من البريد أو كلمة المرور)

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.isObscureText,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller, // ربط المتحكم بالحقل لمعرفة القيم المدخلة
      validator: validator, // تفعيل شرط التحقق من صحة المدخلات عند إرسال الـ Form
      style: inputTextStyle ?? const TextStyle(color: Colors.green), // تطبيق لون وشكل النص المكتوب (افتراضياً أخضر)
      obscureText: isObscureText ?? false, // إخفاء النص أو إظهاره بناءً على القيمة (افتراضياً ظاهري)
      decoration: InputDecoration(
        isDense: true, // تقليل المساحة والفراغات العمودية داخل الحقل ليكون أصغر حجماً وأنيقاً
        filled: true, // السماح بتعبئة لون خلفية الحقل
        fillColor: Colors.black.withOpacity(0.3), // لون خلفية الحقل أسود شفاف بنسبة 30%
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16), // تطبيق الحشوة الداخلية للحقل
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ), // الحدود الافتراضية عند التركيز (بدون خطوط وبحواف دائرية 12)
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ), // الحدود الافتراضية والحقل جاهز للاستخدام
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ), // الحدود العامة للحقل بحواف دائرية مقوسة
        hintText: hintText, // عرض النص التوضيحي المؤقت
        labelText: labelText, // عرض عنوان الحقل الثابت أو المتحرك
        labelStyle: const TextStyle(color: Colors.green), // لون خط العنوان بلون أخضر
        hintStyle: hintStyle ?? TextStyle(color: Colors.green.withOpacity(0.5)), // لون النص التوضيحي أخضر باهت
        suffixIcon: suffixIcon, // عرض الأيقونة الجانبية إن وجدت
      ),
    );
  }
}