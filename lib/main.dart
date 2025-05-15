import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/routes_page.dart';
import 'package:seek_my_course/src/View/Screens/navigator_screen.dart';
import 'package:seek_my_course/src/View/Utilies/theme.dart';

void main() {
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
      home: NavigatorScreen(index: 1),
    );
  }
}
