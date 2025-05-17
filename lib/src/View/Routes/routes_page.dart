import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_choose_language.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_no_of_subtopic.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/login_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/onboarding_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/splash_screen.dart';
import 'package:seek_my_course/src/View/Screens/home_screen.dart';


class AppRoutes {
  static appRoutes() => [
    GetPage(name: Appnames.splashScreen, 
    page: () =>const SplashScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
    GetPage(name: Appnames.onboardScreen, 
    page: () =>const OnboardingScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
    GetPage(
      name: Appnames.loginScreen, 
      page: ()=> const LoginScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
    GetPage(
      name: Appnames.home, 
      page: () =>const HomeScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.generateCourseNoOfSubtopic, 
      page: () =>const GenerateCourseNoOfSubtopic(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.generateCourseChooseLanguage, 
      page: () =>const GenerateCourseChooseLanguage(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
  ];
}