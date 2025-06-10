import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/radio_button_widget.dart';

class AccessControl extends StatefulWidget {
  const AccessControl({super.key});

  @override
  State<AccessControl> createState() => _AccessControlState();
}

class _AccessControlState extends State<AccessControl> {
   String accessControl = "Private";
  @override
  Widget build(BuildContext context) {
   ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Access Control",onPressed: (){Get.back();},),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Create Study Group",style: theme.textTheme.titleLarge,)),
              32.vspace,
              CommonRowTextWidget(title:"Control Your Access: ", answer: "Public or Private Group?"),
              32.vspace,
              Text("“Control who can join your group. Select 'Public' to allow anyone to join, or 'Private' to limit access to invited members.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
              32.vspace,
              RadioButtonWidget(
                        text: "Private",
                        groupValue: accessControl,
                        value: "Private",
                        onChanged: (newValue) {
                          setState(() {
                            accessControl = newValue!;
                          });
                        },
                      ),
              16.vspace,
               RadioButtonWidget(
                        text: "Public",
                        value: "Public",
                        groupValue: accessControl,
                        onChanged: (newValue) {
                          setState(() {
                            accessControl = newValue!;
                          });
                        },
                      ),
               SizedBox(height: context.height/14,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){  Get.back();},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
               CustomButton(onPressed: (){Get.toNamed(Appnames.enterEmailAddress);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )
             
            ],
        ),
      ),
    );
  }
}