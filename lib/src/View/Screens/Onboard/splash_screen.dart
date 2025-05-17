import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Screens/Onboard/onboarding_screen.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(AppImages.splash),
          fit: BoxFit.fill)
      ),
    );
  }
}