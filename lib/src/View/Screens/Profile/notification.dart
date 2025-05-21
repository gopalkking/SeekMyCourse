import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Notification",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16) ,
        child: Column(
          children: [
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index) {
                return Container(
                color: Color(AppColors.lightBlack),
                margin: EdgeInsets.only(bottom: 16),
                 padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                        CircleAvatar(backgroundColor: theme.splashColor,maxRadius: 29,child: Image.asset(AppImages.file)),
                        8.hspace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("File uploaded",style: theme.textTheme.bodyLarge,),
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 240,
                              child: Text("Your file has successfully been uploaded",style: theme.textTheme.bodyMedium!.copyWith(color: AppColors.appColors.shade300),)),
                              Text("1 day",style: theme.textTheme.bodyMedium!.copyWith(color: AppColors.appColors.shade300),)
                          ],
                        )
                          ],
                        ),
                       
                      ],)
                    ],
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}