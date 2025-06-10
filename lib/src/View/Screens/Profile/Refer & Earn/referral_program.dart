import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class ReferralProgram extends StatelessWidget {
  const ReferralProgram({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Referral Program",onPressed: (){Get.back();},),
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
                  Text("Seek MY Course Referral Program Terms",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor,),),
                  8.vspace,
                  Text("Last Update on : 01-Jan-2025",style: theme.textTheme.bodyMedium,),
                  16.vspace,
                  Text("What is Lorem Ipsum?",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor,),),
                  8.vspace,
                  RichText(text: TextSpan(
                    text: 'Lorem Ipsum',
                    style: theme.textTheme.bodySmall!.copyWith(color: theme.splashColor,),
                    children: [
                      TextSpan(
                        text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letterset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,),
                      )
                    ]
                  )),
                        16.vspace,
                  Text("What is Lorem Ipsum?",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor,),),
                    8.vspace,
                  RichText(text: TextSpan(
                    text: 'Lorem Ipsum',
                    style: theme.textTheme.bodySmall!.copyWith(color: theme.splashColor,),
                    children: [
                      TextSpan(
                        text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letterset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,),
                      )
                    ]
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}