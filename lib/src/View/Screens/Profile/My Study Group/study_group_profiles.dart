import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/pagination_widget.dart';
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
        onPressed: () {Get.back();},
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
             PaginationWidget(perPage: ' ${'1'} - ${_itemsPerPage.toString().padLeft(2,'0')} of ${30}', onChanged: (newValue) {
                setState(() {
                  _itemsPerPage = newValue!;
                  currentPage = 0;
                });
              }, items: perPageOptions,leftOnPressed: () {
                
              },rightOnPressed: () {
                          
              },),

          ],
        ),
      ),
    );
  }
}
