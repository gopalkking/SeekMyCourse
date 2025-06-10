import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/onboard_textform_widget.dart';

class CreateStudyGroup extends StatefulWidget {
  const CreateStudyGroup({super.key});

  @override
  State<CreateStudyGroup> createState() => _CreateStudyGroupState();
}

class _CreateStudyGroupState extends State<CreateStudyGroup> {
  TextEditingController groupName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Create study group",onPressed: (){Get.back();},),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Center(child: Text("Create Study Group",style: theme.textTheme.titleLarge,)),
              32.vspace,
              CommonRowTextWidget(title: "Launch Your Learning Squad: ", answer: "Enter Group Name."),
            32.vspace,
            Text("“Enter a name for your study group. This will be the hub where you and your peers come together to learn and grow.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
            32.vspace,
            Text("Enter Your Group Name",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            8.vspace,
            TextFormWidget(hintText: "Type here...", textEditingController: groupName, color:  Colors.grey.shade800, fillColor: Colors.white),
            SizedBox(height: context.height/14,),
             Center(child: CustomButton(onPressed: (){Get.toNamed(Appnames.chooseProfilePicture);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,))
          ],
        ),
      ),
    );
  }
}