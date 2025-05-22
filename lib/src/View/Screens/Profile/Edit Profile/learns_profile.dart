import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_edit_button.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/learns_profile_edit_dialog.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class LearnsProfile extends StatefulWidget {
  const LearnsProfile({super.key});

  @override
  State<LearnsProfile> createState() => _LearnsProfileState();
}

class _LearnsProfileState extends State<LearnsProfile> {
  TextEditingController learningGoals = TextEditingController();
  TextEditingController resourceNeeds = TextEditingController();
  TextEditingController experienceLevel = TextEditingController();
  TextEditingController newSkillTarget = TextEditingController();
  TextEditingController areaOfInterest = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color blackColor = Color(0xff282828);
    return Column(
      children: [
        Container(
          color: Color(AppColors.lightBlack),
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomEditButton(
                    onPressed: () {
                      alertBoxEdit(context);
                    },
                  ),
                ],
              ),
              16.vspace,
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
                            "Learning Goals :",
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
                            "Experience level :",
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
                            "Resource Needs :",
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
                            "New Skill Target :",
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
            ],
          ),
        ),
      ],
    );
  }

  alertBoxEdit(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return LearnsProfileEditDialog(
          buttontext: "Save",
          canceltext: "Cancel",
          learningGoals: learningGoals,
          resourceNeeds: resourceNeeds,
          experienceLevel: experienceLevel,
          newSkillTarget: newSkillTarget,
          areaOfInterest: areaOfInterest,
          buttoncolor: Theme.of(context).splashColor,
          onPressed: () {
            Navigator.pop(context);
          },
          cancelButton: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
