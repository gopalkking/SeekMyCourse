import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
    final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.background),fit: BoxFit.fill),
        ),
        child: Expanded(
          child: PageView(
            controller: pageController,
            children: [
              OnboardingWidgets(image: AppImages.ai,text:'Discover',text1: 'Your Learning Path',text2: '“ AI-powered course creation,\ntailored just for you.”',pageController: pageController,onTap: (){
                Get.toNamed(Appnames.loginScreen);
              },onpressed: (){},),
              OnboardingWidgets(image: AppImages.group,text: 'Create Courses',text1: 'Your Way',text2: '“ Choose from video, theory, or \nimage-based formats.”',pageController: pageController,onTap: (){},onpressed: (){},),
              OnboardingWidgets(image: AppImages.robot,text: 'Your Personal',text1: 'AI Tutor',text2: '“ Ask questions, get answer, Anytime, anywhere.”',pageController: pageController,onTap: (){},onpressed: (){},),
              24.vspace
            ],
          ),
        ),
      ),
    );
  }
}