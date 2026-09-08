import 'package:api/CORE/routing/routs.dart';

// import 'package:api/CORE/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // أضف هذا السطر
import './CORE/routing/app_roter.dart';


class DocApp  extends StatelessWidget {
  final AppRouter appRouter ;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        
        title: "Api",
        theme: ThemeData( 
    //    primaryColor: ColorsManager.mainpr,
    // scaffoldBackgroundColor: ColorsManager.secpnd,
        ),
        debugShowCheckedModeBanner: false,
       initialRoute: Routes.onboardingScreen, 
        onGenerateRoute: appRouter.generateRoute,
      ),  

   
   

  
    );
  }
}