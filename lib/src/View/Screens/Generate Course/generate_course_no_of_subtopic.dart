import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/radio_button_widget.dart';

class GenerateCourseNoOfSubtopic extends StatefulWidget {
  const GenerateCourseNoOfSubtopic({super.key});

  @override
  State<GenerateCourseNoOfSubtopic> createState() => _GenerateCourseNoOfSubtopicState();
}

class _GenerateCourseNoOfSubtopicState extends State<GenerateCourseNoOfSubtopic> {
  TextEditingController topicName = TextEditingController();
  String selectedValue = "5";
  String selectedCourse = "Text & Image Course";
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text("No of subtopics",style: theme.textTheme.titleSmall,),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Generate Course",style: theme.textTheme.titleLarge,)),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Course \nTopic",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                Text("No of \nSubtopic",style: theme.textTheme.bodyMedium,textAlign: TextAlign.center),
                Text("Course \nLanguage",style: theme.textTheme.bodyMedium,textAlign: TextAlign.center)
              ],
            ),
            16.vspace,
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                8.hspace,
                CircleAvatar(backgroundColor: theme.splashColor,radius: 20,child: Text("1",style: theme.textTheme.bodySmall,),),
                SizedBox(width: context.width/3.5,child: Divider(color: Colors.white,)),
                CircleAvatar(backgroundColor: theme.splashColor,radius: 20,child: Text("2",style: theme.textTheme.bodySmall,),),
                SizedBox(width: context.width/3.5,child: Divider(color: Colors.white,)),
                CircleAvatar(backgroundColor: Colors.white,radius: 20,child: Text("3",style: theme.textTheme.bodySmall,),),
              ],
            ),
            16.vspace,
            Row(
              children: [
                Text("Tailor Your Focus:",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                8.hspace,
                Text("Number Of Subtopics?",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              ],
            ),
            16.vspace,
            Text("“Specify the number of subtopics you need. We’ll break down the topic into manageable sections for effective learning.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
            20.vspace,
            Text("Select No of Subtopics",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            8.vspace,
            RadioButtonWidget(
                        text: "05",
                        value: "5",
                        groupValue: selectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                      ),

            RadioButtonWidget(
                        text: "10",
                        value: "10",
                        groupValue: selectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                      ),
            8.vspace,
            Text("Choose your course type",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            8.vspace,
              RadioButtonWidget(
                        text: "Theory & Image Course",
                        groupValue: selectedCourse,
                        value: "Text & Image Course",
                        onChanged: (newValue) {
                          setState(() {
                            selectedCourse = newValue!;
                          });
                        },
                      ),
               RadioButtonWidget(
                        text: "Theory & Video Course",
                        value: "Video & Text Course",
                        groupValue: selectedCourse,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCourse = newValue!;
                          });
                        },
                      ),
            64.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){Get.back();},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
                CustomButton(onPressed: (){Get.toNamed(Appnames.generateCourseChooseLanguage);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )
          ],
        ),
      ),
    );
  }
}