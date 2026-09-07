
import 'package:api/feature/onbording/widgest/bottom.dart';
import 'package:api/feature/onbording/widgest/cars_logo.dart';
import 'package:api/feature/onbording/widgest/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:api/CORE/theming/colors.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
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
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  const DocLogoAndName(),
                  SizedBox(height: 20.h),
                  Carimageandtext(),
                  Button(),
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}