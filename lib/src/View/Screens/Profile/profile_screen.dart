import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/navigator_screen.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/dialog_widget.dart';
import 'package:seek_my_course/src/View/Widget/profile_widget.dart';

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: ClipOval(child: Image.asset(AppImages.photo,height: 120,width: 120,fit: BoxFit.cover,)),
                      ),
                      16.hspace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vishnu Nair",style: theme.textTheme.bodyLarge,),8.vspace,
                          Text("Profile Completion",style: theme.textTheme.bodyMedium,),
                          4.vspace,
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 2,bottom: 6),
                                 child: Text("50%",style: theme.textTheme.bodyMedium,),
                               ),
                              LinearPercentIndicator(
                                    width: context.height/4,
                                    padding: EdgeInsets.zero,
                                    animation: true,
                                    lineHeight: 5.0,
                                    animationDuration: 2000,
                                    percent: 0.5,
                                    barRadius: const Radius.circular(10),
                                    progressColor:  theme.splashColor,
                                  ),
                                    
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  16.vspace,
                   CustomButton(onPressed: (){},text: "Change", width: context.width/3.1, height: 29, color: theme.splashColor,textcolor: Colors.black,textsize: 10),
                ],
              ),
            ),
             8.vspace,   
                  Container(
                    color: Color(AppColors.lightBlack),
                    child: Column(
                      children: [
                      ProfileWidget(text: "Edit Profile",onPressed: (){Get.toNamed(Appnames.editProfile);},),
                      ProfileWidget(text: "My Course",onPressed: (){},),
                      ProfileWidget(text: "My Certificate",onPressed: (){},),
                      ProfileWidget(text: "My Study Group",onPressed: (){Get.toNamed(Appnames.myStudyGroup);},),
                      ProfileWidget(text: "Refer & Earn",onPressed: (){Get.toNamed(Appnames.referralDashboard);},),
                      ProfileWidget(text: "Help & Support",onPressed: (){},),
                      ProfileWidget(text: "Notification",onPressed: (){Get.toNamed(Appnames.notification);},rightArrow: false,),
                      ProfileWidget(text: "Terms & Condition",onPressed: (){Get.toNamed(Appnames.termsOfServiceTabs);},rightArrow: false,),
                      ProfileWidget(text: "Logout",onPressed: (){alertBoxLogout(context);},rightArrow: false,),
                      ProfileWidget(text: "Delete Account",onPressed: (){alertBoxDeleteAccount(context);},rightArrow: false,),
                      Divider(color: AppColors.appColors.shade200,thickness: 2,height: 6,),
                      32.vspace
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
  
alertBoxDeleteAccount(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text1: 'Delete',
            text2: 'Do you want to delete account',
            buttoncolor: Theme.of(context).splashColor,
            buttontext: 'Delete',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
 
alertBoxLogout(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text1: 'Logout',
            text2: 'Do you want to exit your app',
            buttoncolor: Theme.of(context).splashColor,
            buttontext: 'Confirm',
            canceltext: 'Cancel',
            onPressed: () {
              Get.to(Appnames.loginScreen);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
}
