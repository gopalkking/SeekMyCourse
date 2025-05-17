import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/ai_chat_screen.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/ai_notes_screen.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_choose_language.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_choose_topic_name.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_no_of_subtopic.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_show.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/quiz_completed.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/quiz_screen.dart';
import 'package:seek_my_course/src/View/Screens/home_screen.dart';


class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: Appnames.home, 
      page: () =>const HomeScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.generateCourse, 
      page: () =>const GenerateCourse(),
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
    GetPage(
      name: Appnames.generateCourseChooseTopicName, 
      page: () =>const GenerateCourseChooseTopicName(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.generateCourseShow, 
      page: () =>const GenerateCourseShow(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.aiNotesScreen, 
      page: () =>const AiNotesScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.aiChatScreen, 
      page: () =>const AiChatScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
     GetPage(
      name: Appnames.quizScreen, 
      page: () =>const QuizScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.quizCompleted, 
      page: () =>const QuizCompleted(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
  ];
}