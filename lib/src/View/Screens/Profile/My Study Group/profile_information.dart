import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/My%20Study%20Group/container_text_personal_info_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/read_more_text.dart';
import 'package:seek_my_course/src/View/Widget/small_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/My%20Study%20Group/social_media_button.dart';

class ProfileInformation extends StatefulWidget {
  const ProfileInformation({super.key});

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Profile Information",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Color(AppColors.lightBlack), 
              child: Column(
                 children: [
                    Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade500,
                            border: Border.all(
                              color: theme.splashColor,
                              width: 2.0, 
                            ),
                          ),
                          child: ClipOval(child: Image.asset(AppImages.photo,height: 100,width: 100,fit: BoxFit.cover,)),
                        ),
                        8.vspace,
                  Text("Vishnu",style: theme.textTheme.bodyMedium,),
                  8.vspace,
                  SmallRowTextWidget(title: "Learner Since : ", answer: "01-Mar-2025",mainAxisAlignment: MainAxisAlignment.center,),
                  8.vspace,
                  SmallRowTextWidget(title: "No of Courses Studied : ", answer: "25",mainAxisAlignment: MainAxisAlignment.center,),
                  8.vspace,
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text("Bio: ",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),softWrap: true,),
                         SizedBox(
                          width: context.width/1.4,
                          child: ReadMoreText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown")),
                       ],
                     ),
                  16.vspace,
                  CustomOutlineButton(onPressed: (){  Get.back();},text: "Block User", width: double.infinity, height: context.height/17, color: Colors.white),
                  16.vspace,
                  CustomButton(onPressed: (){Get.toNamed(Appnames.chatingStudyGroup);},text: "Chat", width: double.infinity, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,),
                  32.vspace,
                  Row(
                    children: [
                     SocialMediaButton(imageText: AppImages.facebook, onPressed: (){}),
                     8.hspace,
                     SocialMediaButton(imageText: AppImages.instagram, onPressed: (){}),
                      8.hspace,
                     SocialMediaButton(imageText: AppImages.x, onPressed: (){}),
                      8.hspace,
                     SocialMediaButton(imageText: AppImages.linkedin, onPressed: (){}),
                      8.hspace,
                     SocialMediaButton(imageText: AppImages.youtube, onPressed: (){})

                    ],
                  ),
                  8.vspace
                 ],
              ),
            ),
            16.vspace,
            Container(
              padding: EdgeInsets.all(16),
              color: Color(AppColors.lightBlack), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("LEARN PROFILE",style: theme.textTheme.titleMedium!.copyWith(color: theme.splashColor),)),
                  8.vspace,
                  CommonRowTextWidget(title: "Learning Goals : ", answer: "HSC in Science, BTECH Computer Science"),
                  8.vspace,
                  CommonRowTextWidget(title: "Experience Level : ", answer: "Medium"),
                  8.vspace,
                  Text("Area of Interest: ",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                  8.vspace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      children: [
                        ContainerTextPersonalInfoWidget(text: "AI"),
                        8.vspace,
                        ContainerTextPersonalInfoWidget(text: "AI"),
                        8.vspace,
                        ContainerTextPersonalInfoWidget(text: "AI"),
                      ],
                    ),
                     Column(
                      children: [
                        ContainerTextPersonalInfoWidget(text: "Technology"),
                        8.vspace,
                        ContainerTextPersonalInfoWidget(text: "Technology"),
                        8.vspace,
                        ContainerTextPersonalInfoWidget(text: "Technology"),
                      ],
                    ),
                     Column(
                      children: [
                        ContainerTextPersonalInfoWidget(text: "Business"),
                        8.vspace,
                        ContainerTextPersonalInfoWidget(text: "Business"),
                        8.vspace,
                        ContainerTextPersonalInfoWidget(text: "Business"),
                      ],
                    )
                  ],
                   ),
                   8.vspace,
                  CommonRowTextWidget(title: "Resource Needs: ", answer: "Lorem Ipsum"),
                  8.vspace,
                  CommonRowTextWidget(title: "New Skills Target : ", answer: "Lorem Ipsum")
                ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}