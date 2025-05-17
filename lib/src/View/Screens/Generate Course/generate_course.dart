import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/navigator_screen.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class GenerateCourse extends StatefulWidget {
  const GenerateCourse({super.key});

  @override
  State<GenerateCourse> createState() => _GenerateCourseState();
}

class _GenerateCourseState extends State<GenerateCourse> {
  TextEditingController topicName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColors.lightBlack),
        title: Text("Course Topic Name",style: theme.textTheme.titleSmall,),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Generate Course",style: theme.textTheme.titleLarge,)),
            32.vspace,
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
                CircleAvatar(backgroundColor: Colors.white,radius: 20,child: Text("2",style: theme.textTheme.bodySmall,),),
                SizedBox(width: context.width/3.5,child: Divider(color: Colors.white,)),
                CircleAvatar(backgroundColor: Colors.white,radius: 20,child: Text("3",style: theme.textTheme.bodySmall,),),
              ],
            ),
            40.vspace,
            Row(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ignite Your Curiosity:",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                8.hspace,
                Text("What Do You Want to \nLearn?",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              ],
            ),
            8.vspace,
            Text("“Define your learning focus. Input the topic you wish to study, and we will generate a course that is customized to your needs. You are in control of your learning.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
            32.vspace,
            Text("Enter Your Topic Name",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            8.vspace,
            TextFormWidget(hintText: "Type here...", textEditingController: topicName, color:  Colors.grey.shade800, fillColor: Colors.white),
            SizedBox(height: context.height/14,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){  Get.to(NavigatorScreen(index: 0));},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
               CustomButton(onPressed: (){Get.toNamed(Appnames.generateCourseNoOfSubtopic);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )
          ],
        ),
      ),
    );
  }
}