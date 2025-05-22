import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/ai_chat_screen.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/ai_notes_screen.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_choose_language.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_choose_topic_name.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_no_of_subtopic.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/login_otp_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/login_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/onboarding_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/signup_otp_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/signup_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/splash_screen.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/generate_course_show.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/quiz_completed.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/quiz_screen.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/subscriptions.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Edit%20Profile/subscription_invoice.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Refer%20&%20Earn/add_bank_details.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Refer%20&%20Earn/bank_detail.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Refer%20&%20Earn/payout_screen.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Refer%20&%20Earn/referral_dashboard.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Refer%20&%20Earn/referral_program.dart';
import 'package:seek_my_course/src/View/Screens/Profile/edit_profile.dart';
import 'package:seek_my_course/src/View/Screens/Profile/notification.dart';
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
      name: Appnames.loginotp, 
      page: ()=> const LoginOTPScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
      GetPage(
      name: Appnames.signupScreen, 
      page: ()=> const SignupScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
    GetPage(
      name: Appnames.signupOtp, 
      page: ()=> const SignOTPScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
     GetPage(
      name: Appnames.subscription, 
      page: ()=> const SubscriptionPlans(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade),
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
    GetPage(
      name: Appnames.referralDashboard, 
      page: () =>const ReferralDashboard(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.bankDetail, 
      page: () =>const BankDetail(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.addBankDetails, 
      page: () =>const AddBankDetails(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.payOut, 
      page: () =>const PayoutScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.referralProgram, 
      page: () =>const ReferralProgram(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.notification, 
      page: () =>const Notification(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.editProfile, 
      page: () =>const EditProfile() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
    GetPage(
      name: Appnames.subscriptionInvoice, 
      page: () =>const SubscriptionInvoice() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade
      ),
  ];
}