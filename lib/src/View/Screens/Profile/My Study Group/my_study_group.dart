import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/grid_view_row_text.dart';
import 'package:seek_my_course/src/View/Widget/small_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class MyStudyGroup extends StatefulWidget {
  const MyStudyGroup({super.key});

  @override
  State<MyStudyGroup> createState() => _MyStudyGroupState();
}

class _MyStudyGroupState extends State<MyStudyGroup> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(
        text: "My study group",
        onPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My study group",
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Appnames.createStudyGroup);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.splashColor,
                    ),
                    child: Icon(Icons.add, color: Colors.black),
                  ),
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
            childAspectRatio: 0.43, 
          ),
             shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index) {
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
                        "Group Name",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color:theme.splashColor,
                          fontWeight: FontWeight.bold
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
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
                              text:
                                  "Video  & Theory Course",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                     GridViewRowText(title: "Creator: ", answer: "Vishnu Nair"),
                     GridViewRowText(title: "No of Learners: ", answer: "05"),
                     GridViewRowText(title: "Date: ", answer: "12 -Mar - 2025"),
                      4.vspace,
                      CustomButton(
                        onPressed: () {},
                        text: "View Group",
                        width: double.infinity,
                        height: 39,
                        color: theme.splashColor,
                        textcolor: Colors.black,
                        textsize: 12,
                      ),
                    ],
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
