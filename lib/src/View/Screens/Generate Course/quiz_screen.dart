import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/navigator_screen.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedIndex;

  final List<String> answers = [
    "Improved cardiovascular health",
    "Boosted Immune System",
    "Increased risk of type 2 diabetes", 
    "Reduced risk of certain cancers"
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme =Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Quiz",onPressed: (){Get.back();},),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text("Quiz", style: theme.textTheme.titleLarge),
              16.vspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text("Question 1/ 10", style: theme.textTheme.bodyLarge),
                    TextButton(onPressed: (){Get.back();}, child: Text("Quit",style: theme.textTheme.bodyLarge!.copyWith(color: Colors.red),))
                ],
              ),
              16.vspace,
               Text(
              "Which of the following is NOT a commonly cited health benefit of green tea?",
              style: theme.textTheme.bodyMedium),
              16.vspace,
               ...List.generate(answers.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: selectedIndex == index ? Colors.green : Colors.transparent,
                  ),
                  child: Text(
                    answers[index],
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
              24.vspace,
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){  Get.to(NavigatorScreen(index: 0));},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
               CustomButton(onPressed: (){Get.toNamed(Appnames.quizCompleted);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )

          ],
        ),
      ),
    );
  }
}