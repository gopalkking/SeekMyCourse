import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:seek_my_course/src/View/Screens/navigator_screen.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(
        text: "",
        onPressed: () {
          Get.to(NavigatorScreen(index: 0));
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.splashColor,
                      width: 2.0, 
                    ),
                  ),
                  child: ClipOval(child: Image.asset(AppImages.photo,height: 100,width: 100,fit: BoxFit.cover,)),
                ),
                16.hspace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vishnu Nair",style: theme.textTheme.bodyLarge,),8.vspace,
                    Text("Profile Completion",style: theme.textTheme.bodyMedium,),
                    // LinearPercentIndicator(
                    //       width: MediaQuery.of(context).size.width - 40,
                    //       animation: true,
                    //       lineHeight: 20.0,
                    //       animationDuration: 2000,
                    //       percent: 1.0,
                    //       barRadius: const Radius.circular(10),
                    //       progressColor:  theme.splashColor,
                    //     )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
