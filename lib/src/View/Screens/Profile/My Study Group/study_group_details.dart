import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/read_more_text.dart';

class StudyGroupDetails extends StatefulWidget {
  const StudyGroupDetails({super.key});

  @override
  State<StudyGroupDetails> createState() => _StudyGroupDetailsState();
}

class _StudyGroupDetailsState extends State<StudyGroupDetails> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Study group details",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
       padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              color: Color(AppColors.lightBlack),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Image.asset(AppImages.course,width: double.infinity,height: 200,fit: BoxFit.fill,),
                     8.vspace,
                     Text("Group Name",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor),),
                     8.vspace,
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text("Description: ",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),softWrap: true,),
                         SizedBox(
                          width: 220,
                          child: ReadMoreText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown")),
                       ],
                     ),
                     16.vspace,
                     Text("Group Details",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor),),
                     8.vspace,
                     CommonRowTextWidget(title: "Start Date: ", answer: "01-Jan-2025"),
                     8.vspace,
                     CommonRowTextWidget(title: "Group Type: ", answer: "Public"),
                     8.vspace,
                     CommonRowTextWidget(title: "No of Learners ", answer: "152"),
                     8.vspace,
                     CommonRowTextWidget(title: "Group Admin: ", answer: "Vishnu Nair"),
                     SizedBox(height: context.height/14,),
                     CustomButton(onPressed: (){Get.toNamed(Appnames.profileInformation);},text: "View Members", width: double.infinity, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,),
                     16.vspace,
                     CustomOutlineButton(onPressed: (){  Get.back();},text: "Leave Group", width: double.infinity, height: context.height/17, color: Colors.white),
                     16.vspace,
                     CustomOutlineButton(onPressed: (){  Get.back();},text: "Report Group", width: double.infinity, height: context.height/17, color: Colors.white),
                     16.vspace,
                     CustomOutlineButton(onPressed: (){Get.toNamed(Appnames.studyGroupProfiles);},text: "Invite Users", width: double.infinity, height: context.height/17, color: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}