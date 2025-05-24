import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Terms%20&%20Conditions/privacy_policy.dart';
import 'package:seek_my_course/src/View/Screens/Profile/Terms%20&%20Conditions/terms_of_service.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class TermsAndConditionsTabs extends StatefulWidget {
  const TermsAndConditionsTabs({super.key});

  @override
  State<TermsAndConditionsTabs> createState() => _TermsAndConditionsTabsState();
}

class _TermsAndConditionsTabsState extends State<TermsAndConditionsTabs> with SingleTickerProviderStateMixin{
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

  List<String> tabs = ['Terms of Service', 'Privacy Policy',];

      Widget _getTabContent() {
    switch (_selectedIndex) {
      case 0:
        return const TermsOfService();
      case 1:
        return const PrivacyPolicy();
      default:
        return const TermsOfService();
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
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
              Container(
                color: Color(AppColors.lightBlack),
                padding: EdgeInsets.all(16),
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
      );}
}