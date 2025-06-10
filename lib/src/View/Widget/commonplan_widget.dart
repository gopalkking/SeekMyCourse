import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class CommonplanWidget extends StatelessWidget {
  final Decoration decoration;
  final String planname;
  final String amount;
  final String billname;
  final String generatetext;
  final String imagetext;
  final String videotext;
  final String subtopictext;
  final String aitutortext;
  final String studytext;
  final String exporttext;
  final Color plancolor;
  final Color amountcolor;
  final Color? billcolor;
  final Widget buttonwidget;
  final Color textColor;
  final Color iconcolor;
  const CommonplanWidget({
    super.key,
    required this.decoration,
    required this.planname,
    required this.amount,
    required this.billname,
    required this.plancolor,
    required this.amountcolor,
    required this.buttonwidget,
    required this.textColor,
    required this.iconcolor,
    required this.generatetext,
    required this.imagetext,
    required this.videotext,
    required this.subtopictext,
    required this.aitutortext,
    required this.studytext,
    required this.exporttext, this.billcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            planname,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: plancolor),
          ),
          8.vspace,
          Center(
            child: Text(
              amount,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: amountcolor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          8.vspace,
          Center(
            child: Text(
              billname,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: billcolor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          16.vspace,
          buttonwidget,
          8.vspace,
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
              generatetext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
              imagetext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
              videotext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
             subtopictext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
              aitutortext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
             studytext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
          ListTile(
            leading: Image.asset(AppImages.done, color: iconcolor),
            title: Text(
             exporttext,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
