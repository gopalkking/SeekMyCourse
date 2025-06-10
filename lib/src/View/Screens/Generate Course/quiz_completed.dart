import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class QuizCompleted extends StatelessWidget {
  const QuizCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Quiz completed",onPressed: (){Get.back();},),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            SizedBox(height: context.height/7,),
            Container(
              width: double.infinity,
              height: context.height/3,
              padding: EdgeInsets.all(18),
              color: Color(AppColors.lightBlack),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have played a total",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "24 quizzes ",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.splashColor,
                        ),
                      ),
                      Text(
                        "this month!",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  16.vspace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: Image.asset(AppImages.pencil)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5",
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 32
                                  ),
                                ),
                                Text(
                                  "Quiz Created",
                                  style: theme.textTheme.bodyLarge!.copyWith(color: Colors.black)
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: context.width/2.7,
                        padding: EdgeInsets.all(12),
                        color: theme.splashColor,
                        child: Stack(
                          children: [
                              Positioned(
                              right: 0,
                              child: Image.asset(AppImages.won,)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "24",
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 32
                                  ),
                                ),
                                Text(
                                  "Quiz won",
                                  style: theme.textTheme.bodyLarge!.copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
