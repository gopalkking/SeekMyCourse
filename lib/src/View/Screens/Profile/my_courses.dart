import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/filter_helper.dart';
import 'package:seek_my_course/src/View/Widget/grid_view_row_text.dart';
import 'package:seek_my_course/src/View/Widget/pagination_widget.dart';
import 'package:seek_my_course/src/View/Widget/profile_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/small_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  String _selectedLanguage = 'English';
  final List<String> _languages = ['English', 'Tamil', 'Hindi'];
  TextEditingController search = TextEditingController();
  List<String> menuItems = [
    'This Month',
    'Last Month',
    'Last 3 Month',
    'Last 6 Months',
  ];
    int _itemsPerPage = 6;
  int totalItems = 30;
  int currentPage = 0;

  List<int> perPageOptions = [6,10, 15, 20];
  final GlobalKey _filterKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: ProfileAppbarWidget(
        notificationonPressed: () {
          Get.toNamed(Appnames.notification);
        },
        backonPressed: () {},
        text: "Vishnu",
        onChanged: (value) {
          setState(() {
            _selectedLanguage = value!;
          });
        },
        items: _languages,
        value: _selectedLanguage,
        imageText: AppImages.photo,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Courses", style: theme.textTheme.titleMedium),
                Row(
                  children: [
                    Text("All Courses", style: theme.textTheme.bodyMedium),
                    8.hspace,
                    InkWell(
                      key: _filterKey,
                      onTap: () {
                        showFilterMenu(
                          context: context,
                          key: _filterKey,
                          items:
                              menuItems
                                  .map(
                                    (item) => buildPopMenuItem(item, context),
                                  )
                                  .toList(),
                        );
                      },
                      child: Image.asset(
                        AppImages.filter,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            16.vspace,
            CustomTextformWidget(
              hintText: "Search by group name",
              textEditingController: search,
              color: Colors.white,
              fillColor: Color(AppColors.lightBlack),
              suffixIcon: Icon(Icons.search, color: Colors.white),
            ),
            16.vspace,
            GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.38,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  color: Color(AppColors.lightBlack),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.course,
                        height: 130,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      8.vspace,
                      Text(
                        "CCNA Security For Starters",
                        style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
                        maxLines: 2,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Description: ',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.splashColor,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "Lorem Ipsum Dummy text holder in place for original text.",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Type: ',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.splashColor,
                          ),
                          children: [
                            TextSpan(
                              text: "Video  & Theory Course",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    GridViewRowText(
                        title: "No of Learners: ",
                        answer: "05",
                      ),
                    GridViewRowText(
                        title: "Language: ",
                        answer: "English",
                      ),
                    GridViewRowText(
                        title: "Date: ",
                        answer: "12 -Mar - 2025",
                      ),
                      8.vspace,
                      CustomButton(
                        onPressed: () {},
                        text: "Certificate",
                        width: double.infinity,
                        height: 39,
                        color: theme.splashColor,
                        textcolor: Colors.black,
                        textsize: 12,
                      ),
                      8.vspace,
                      CustomOutlineButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "Continue",
                        width: double.infinity,
                        height: 39,
                        color: Colors.white,
                      ),
                    ],
                  ),
                );
              },
            ),
            PaginationWidget(perPage: ' ${'1'} - ${_itemsPerPage.toString().padLeft(2,'0')} of ${30}', onChanged: (newValue) {
                setState(() {
                  _itemsPerPage = newValue!;
                  currentPage = 0;
                });
              }, items: perPageOptions,leftOnPressed: () {
                
              },rightOnPressed: () {
                Get.toNamed(Appnames.referralProgram);
              },),
            16.vspace
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> buildPopMenuItem(String text, BuildContext context) {
    final theme = Theme.of(context);
    return PopupMenuItem<String>(
      value: text,
      child: Text(
        text,
        style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
      ),
    );
  }
}
