import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class ChooseProfilePicture extends StatefulWidget {
  const ChooseProfilePicture({super.key});

  @override
  State<ChooseProfilePicture> createState() => _ChooseProfilePictureState();
}

class _ChooseProfilePictureState extends State<ChooseProfilePicture> {
  TextEditingController fileName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Choose Profile Picture",onPressed: (){Get.back();},),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Create Study Group",style: theme.textTheme.titleLarge,)),
              32.vspace,
              CommonRowTextWidget(title:"Give Your Group a Face: ", answer: "Upload Profile Image."),
              32.vspace,
              Text("“Personalize your study group's space by adding a profile image. This image will represent your group and make it unique.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
              32.vspace,
              Text("Choose Profile Picture",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              8.vspace,
              Row(
                children: [
                  SizedBox(
                    width: 230,
                    child: CustomTextformWidget(hintText: "", textEditingController: fileName, color:  Colors.grey.shade800, fillColor: Colors.white,readOnly: true,)),
                  CustomButton(onPressed: (){},text: "Choose", width: context.width/3, height: context.height/19, color: theme.splashColor,textcolor: Colors.black,)
                ],
              ),
               SizedBox(height: context.height/14,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){  Get.back();},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
               CustomButton(onPressed: (){Get.toNamed(Appnames.accessControl);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )
             
            ],
        ),
      ),
    );
  }
}