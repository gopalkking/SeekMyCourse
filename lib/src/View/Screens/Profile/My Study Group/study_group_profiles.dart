import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/small_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class StudyGroupProfiles extends StatefulWidget {
  const StudyGroupProfiles({super.key});

  @override
  State<StudyGroupProfiles> createState() => _StudyGroupProfilesState();
}

class _StudyGroupProfilesState extends State<StudyGroupProfiles> {
  TextEditingController search = TextEditingController();
  int _itemsPerPage = 6;
  int totalItems = 30;
  int currentPage = 0;

  List<int> perPageOptions = [6,10, 15, 20];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(
        text: "Study group profiles",
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextformWidget(
              hintText: "Search by group name",
              textEditingController: search,
              color: Colors.white,
              fillColor: Color(AppColors.lightBlack),
              suffixIcon: Icon(Icons.search,color: Colors.white,),
            ),
            16.vspace,
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context,index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  margin: EdgeInsets.all(4),
                  color: Color(AppColors.lightBlack),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                AppImages.photo,
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          16.hspace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Group Name",
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              4.vspace,
                              SmallRowTextWidget(
                                title: "Learner Since :",
                                answer: "01-Mar-2025",
                              ),
                              4.vspace,
                              SmallRowTextWidget(
                                title: "No of Courses Studied :",
                                answer: "25",
                              ),
                            ],
                          ),
                        ],
                      ),
                      16.vspace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            onPressed: () {},
                            text: "View \nProfile",
                            width: context.width / 4,
                            height: 45,
                            color: theme.splashColor,
                            textcolor: Colors.black,
                            textsize: 12,
                          ),
                          CustomOutlineButton(
                            onPressed: () {
                              Get.back();
                            },
                            text: "Chat",
                            width: context.width / 4,
                            height: 45,
                            color: Colors.white,
                          ),
                           CustomOutlineButton(
                            onPressed: () {
                              Get.back();
                            },
                            text: "Invite Sent",
                            width: context.width / 4,
                            height: 45,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
            ), 32.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text("Items per page",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),),
              8.hspace,
             Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: DropdownButton<int>(
              value: _itemsPerPage,
              dropdownColor: Colors.black,
              iconEnabledColor: Colors.white,
              underline: SizedBox(),
              style: TextStyle(color: Colors.white),
              items: perPageOptions.map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _itemsPerPage = newValue!;
                  currentPage = 0;
                });
              },
            ),
          ),
          8.vspace,
            Text(
            ' ${'1'} - ${_itemsPerPage.toString().padLeft(2,'0')} of ${30}',
            style: TextStyle(color: Colors.white),
          ),
          InkWell(onTap: (){},child: Icon(Icons.chevron_left, color: Colors.white),),
          InkWell(onTap: (){},child: Icon(Icons.chevron_right, color: Colors.white),),
            ],)

          ],
        ),
      ),
    );
  }
}
