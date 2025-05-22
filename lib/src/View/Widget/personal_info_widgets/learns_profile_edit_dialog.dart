import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class LearnsProfileEditDialog extends StatelessWidget {

  final TextEditingController learningGoals;
  final TextEditingController resourceNeeds;
  final TextEditingController experienceLevel;
  final TextEditingController newSkillTarget;
  final TextEditingController areaOfInterest;
  final String buttontext;
  final String canceltext;
  final Function()? onPressed;
  final Function()? cancelButton;
  final Color? buttoncolor;
  const LearnsProfileEditDialog({super.key, required this.buttontext, required this.canceltext, this.onPressed, this.cancelButton, this.buttoncolor, required this.learningGoals, required this.resourceNeeds, required this.experienceLevel, required this.newSkillTarget, required this.areaOfInterest, });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color blackColor = Color(0xff282828);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      insetPadding: EdgeInsets.all(16),
      backgroundColor: theme.scaffoldBackgroundColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            32.vspace,
               IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Learning Goals:",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          8.vspace,
                          TextFormWidget(
                            hintText: "",
                            color: Colors.white,
                            fillColor: blackColor,
                            textEditingController: learningGoals,
                          ),
                          24.vspace,
                          Text(
                            "Experience level:",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          8.vspace,
                          TextFormWidget(
                            hintText: "",
                            color: Colors.white,
                            fillColor: blackColor,
                            textEditingController: experienceLevel,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Resource Needs:",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          8.vspace,
                          TextFormWidget(
                            hintText: "",
                            color: Colors.white,
                            fillColor: blackColor,
                            textEditingController: resourceNeeds,
                          ),
                          24.vspace,
                          Text(
                            "New Skill Target:",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          8.vspace,
                          TextFormWidget(
                            hintText: "",
                            color: Colors.white,
                            fillColor: blackColor,
                            textEditingController: newSkillTarget,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              16.vspace,
              Text(
                "Area of Interest:",
                style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
              ),
              8.vspace,
              TextFormWidget(
                hintText: "",
                color: Colors.white,
                fillColor: blackColor,
                textEditingController: resourceNeeds,
              ),
            32.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CustomOutlineButton(text: canceltext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: Colors.white,onPressed: cancelButton,textSize: 14,),
              32.hspace,
              CustomButton(text: buttontext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: buttoncolor??Colors.red,textcolor: Colors.black,onPressed:onPressed,textsize: 14,)
            ],),
            32.vspace
          ],
        ),
      ),
    );
  }
}
