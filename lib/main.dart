import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/routes_page.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/splash_screen.dart';
import 'package:seek_my_course/src/View/Utilies/theme.dart';

void main() {
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,DeviceOrientation.portraitUp
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor:Colors.transparent)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SeekMyCourse',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:AppTheme.lightTheme,  
      getPages: AppRoutes.appRoutes(),
      defaultTransition: Transition.leftToRightWithFade,
      home: SplashScreen(),
    );
  }
}
