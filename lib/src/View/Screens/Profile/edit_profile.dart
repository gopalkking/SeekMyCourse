import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Edit%20Profile/bio.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Edit%20Profile/learns_profile.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Edit%20Profile/personal_info.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Edit%20Profile/subscription_view.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/edit_profile_container_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> with SingleTickerProviderStateMixin{
  String _selectedLanguage = 'English';
  final List<String> _languages = ['English', 'Tamil', 'Hindi'];
    late TabController _tabController;
     int _selectedIndex = 0;
    @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
       _selectedIndex = _tabController.index;
      });
    });
    super.initState();
  }
    @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> tabs = ['Personal \nInfo', 'BIO','LEARNS \nPROFILE','Subscription'];

    Widget _getTabContent() {
    switch (_selectedIndex) {
      case 0:
        return const PersonalInfo();
      case 1:
        return const Bio();
      case 2:
        return const LearnsProfile();
      case 3:
        return const SubscriptionView();
      default:
        return const PersonalInfo();
    }
  }
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(
        text: "",
        onPressed: () {Get.back();},
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                      },
                    ),
                    Positioned(
                      right: 13,
                      top: 14,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.asset(AppImages.photo, height: 40, width: 40),
                ),
                8.hspace,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vishnu",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isDense: true,
                        value: _selectedLanguage,
                        dropdownColor: Colors.black87,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.white70,
                        ),
                        items:
                            _languages.map((lang) {
                              return DropdownMenuItem<String>(
                                value: lang,
                                child: Text(lang),
                              );
                            }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
                          Container(
                            color: Color(AppColors.lightBlack),
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
                          child: ClipOval(child: Image.asset(AppImages.photo,height: 100,width: 100,fit: BoxFit.cover,)),
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
                                      width: context.height/4.2,
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
                     CustomButton(onPressed: (){},text: "Change", width: context.width/3.5, height: 29, color: theme.splashColor,textcolor: Colors.black,textsize: 10),
                  ],
                ),
              ),
              16.vspace,
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                       EditProfileContainerWidget(title: "Courses Generated", value: "14"),
                        8.vspace,
                       EditProfileContainerWidget(title: "Video Courses", value: "14"),
                      ],
                    ),
                     Column(
                      children: [
                       EditProfileContainerWidget(title: "Courses Completed", value: "14"),
                        8.vspace,
                       EditProfileContainerWidget(title: "Image Courses", value: "14"),
                      ],
                    ),
                  ],
                ),
              ),
              8.vspace,
               Container(
                color: Color(AppColors.lightBlack),
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 6),
                 child: TabBar(
                         labelPadding: EdgeInsets.zero,
                          controller: _tabController,
                          indicatorColor: theme.splashColor,
                          dividerColor: Colors.transparent,
                          tabs: List.generate(
                            tabs.length,
                            (index) => Text(
                              tabs[index],
                              style: theme.textTheme.bodySmall!.copyWith(
                                  color: _tabController.index == index
                                      ? theme.splashColor
                                      : Colors.white,),
                                  textAlign: TextAlign.center,
                            ),
                          ),
                        ),
               ),
               16.vspace,
               _getTabContent()
            ],
          ),
        ),
      ),
    );
  }
}
