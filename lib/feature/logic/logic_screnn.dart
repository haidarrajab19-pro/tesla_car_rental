import 'package:api/CORE/routing/helpers/spacing.dart';
import 'package:api/CORE/theming/colors.dart';
import 'package:api/CORE/theming/style.dart' show TextStyles;
import 'package:api/CORE/widgest/app_text_button.dart';
import 'package:api/CORE/widgest/app_text_form_field.dart';
import 'package:api/CORE/widgest/or_sign_in_with.dart';
import 'package:api/CORE/widgest/rememberme_and_forget%20passowrd.dart';
import 'package:api/feature/onbording/widgest/social_icons_row.dart';
import 'package:api/feature/onbording/widgest/terms_and_sign_up_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// استيراد كافة المكتبات، الصفحات، والويدجت (Widgets) المصممة مسبقاً والضرورية لبناء شاشة تسجيل الدخول.

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // تعريف مفتاح النموذج للتحقق من صحة المدخلات (Form Validation).
  final _formKey = GlobalKey<FormState>();

  // متغير يتحكم بإخفاء أو إظهار نص كلمة المرور (قيمة افتراضية: مخفي).
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold: الهيكل الأساسي للصفحة ويوفر شاشة فارغة وجاهزة لبناء المحتوى.
      body: Container(
        // Container: الحاوية الرئيسية لتطبيق التدرج اللوني (Gradient) كخلفية للشاشة بأكملها.
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.0, -0.2),
            radius: 0.85,
            colors: [
              AppColors.radialGreenCenter,
              AppColors.radialGreenMiddle,
              AppColors.backgroundBlack,
            ],
            stops: [0.0, 0.6, 1.0],
          ),
          // تصميم تدرج لوني دائري (Radial) يعطي مظهراً داكناً مع إضاءة خضراء متناسقة مع الثيم.
        ),
        child: SafeArea(
          // SafeArea: يمنع تداخل محتوى الشاشة مع النتوء العلوي أو أزرار النظام السفلية للهاتف.
          child: SingleChildScrollView(
            // SingleChildScrollView: يتيح إمكانية التمرير (Scroll) لمنع حدوث خطأ Overflow لو ظهرت لوحة المفاتيح.
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 40,
              ),
              child: Stack(
                // Stack: يتيح وضع العناصر فوق بعضها البعض (مثل وضع الشعار كخلفية مائلة وتحته عناصر الفورم).
                children: [
                  
                  // --- 1. الشعار الكبير المائل في الخلفية (Watermark) ---
                  Positioned(
                    top: 200,
                    left: -50,
                    child: Transform.rotate(
                      angle: -0.35,
                      // تدوير الشعار بزاوية معينة ليعطي طابعاً جمالياً في الخلفية.
                      child: SvgPicture.asset(
                        "assets/svgs/logod.svg",
                        width: 450,
                      ),
                    ),
                  ),

                  // --- 2. المحتوى الأساسي وحقول الإدخال (Form & Inputs) ---
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    // ترك هوامش أفقية ثابتة من اليمين واليسار لكي لا تلتصق العناصر بحواف الشاشة.
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpacing(20),
                        Text(
                          "Wellcome Back",
                          style: TextStyles.fontgreen1,
                        ),
                        // عنوان الترحيب الأساسي الأول.
                        
                        verticalSpacing(10),
                        Text(
                          "We’re Excited To Have You Back",
                          style: TextStyles.fontgreen2,
                        ),
                        // العنوان الفرعي الترحيبى تحت الأول.
                        
                        verticalSpacing(20),
                        
                        // شعار التطبيق الصغير في المنتصف
                        Center(
                          child: SvgPicture.asset(
                            "assets/svgs/tt.svg",
                            width: 70,
                          ),
                        ),
                        
                        verticalSpacing(30),
                        
                        // نموذج الإدخال (Form) للتحقق من البيانات
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              
                              // حقل إدخال البريد الإلكتروني
                              AppTextFormField(hintText: 'Email'),
                              
                              verticalSpacing(20),
                              
                              // حقل إدخال كلمة المرور مع زر إظهار/إخفاء النص
                              AppTextFormField(
                                hintText: 'Password',
                                isObscureText: _isObscureText,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isObscureText = !_isObscureText;
                                      // عكس حالة إخفاء النص عند النقر على أيقونة العين.
                                    });
                                  },
                                  child: Icon(
                                    _isObscureText ? Icons.visibility_off : Icons.visibility,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              
                              verticalSpacing(30),
                              
                              // ويدجت "تذكرني" و "نسيت كلمة المرور" المنفصلة
                              RememberMeAndForgotPassword(
                                onForgotPasswordPressed: () {
                                  // دالة التنفيذ عند الضغط على زر نسيت كلمة المرور
                                  print("Forgot Password Clicked");
                                },
                              ),
                              
                              verticalSpacing(60),

                              // زر تسجيل الدخول الأساسي المخصص
                              AppTextButton(
                                buttonText: 'Login',
                                textStyle: TextStyles.fontBLack1,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // التحقق من صحة المدخلات في الحقول قبل تنفيذ عملية الدخول
                                    print("Login");
                                  }
                                },
                              ),

                              verticalSpacing(30),

                              // الفاصل الخطي مع نص "أو تسجيل الدخول بواسطة"
                              OrSignInWithDivider(
                                text: "Or Sign in with",
                              ),

                              verticalSpacing(30),
                             const SocialIconsRow(), // استدعاء ويدجت أيقونات التواصل الاجتماعي الدائرية
                             verticalSpacing(30),
                            const TermsAndSignUpSection(), // استدعاء ويدجت النصوص السفلية
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}