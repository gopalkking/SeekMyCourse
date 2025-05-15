import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_dropdown.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class GenerateCourseChooseLanguage extends StatefulWidget {
  const GenerateCourseChooseLanguage({super.key});

  @override
  State<GenerateCourseChooseLanguage> createState() => _GenerateCourseChooseLanguageState();
}

class _GenerateCourseChooseLanguageState extends State<GenerateCourseChooseLanguage> {
  final items = ['English', 'Tamil', 'Hindi'];
  
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text("Choose Language",style: theme.textTheme.titleSmall,),
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
                CircleAvatar(backgroundColor: theme.splashColor,radius: 20,child: Text("3",style: theme.textTheme.bodySmall,),),
              ],
            ),
            16.vspace,
            Row(
              children: [
                Text("Speak Your Language:",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                8.hspace,
                Text("Select Your Course \nLanguage.",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              ],
            ),
            16.vspace,
            Text("“Personalize your learning experience by choosing your course language. We’ll generate content that aligns with your linguistic preferences.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
            20.vspace,
            Text("Course Language",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            8.vspace,
            Container(
             width: context.width/1, height: context.height/12,
             padding: EdgeInsets.symmetric(horizontal: 16),
             decoration: BoxDecoration(color: Colors.white),
             child: Row(
              children: [
                Image.asset(AppImages.indiaFlag),
                16.hspace,
                SizedBox(
                            width: context.width/1.4,
                            child: CustomDropdown(
                                labeltext: 'Choose your Language',
                                borderColor: Colors.white,
                                labelColor: Colors.grey.shade800,
                                value: selectedLanguage,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedLanguage = newValue;
                                  });
                                },
                                items: items)),
              ],
             ),
            ),
            64.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){Get.back();},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
                CustomButton(onPressed: (){},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )
          ],
        ),
      ),
    );
  }
}