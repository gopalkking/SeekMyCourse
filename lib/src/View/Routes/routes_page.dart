import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/home_screen.dart';


class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: Appnames.home, 
      page: () =>const HomeScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
  ];
}