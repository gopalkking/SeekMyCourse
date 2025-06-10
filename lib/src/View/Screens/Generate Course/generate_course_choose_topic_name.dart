import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class GenerateCourseChooseTopicName extends StatefulWidget {
  const GenerateCourseChooseTopicName({super.key});

  @override
  State<GenerateCourseChooseTopicName> createState() => _GenerateCourseChooseTopicNameState();
}

class _GenerateCourseChooseTopicNameState extends State<GenerateCourseChooseTopicName> {
  int? _expandedIndex; 
  final List<Map<String, dynamic>> subtopics = [
    {
      'title': 'Subtopic Number 1',
      'chapters': ['Chapter Name', 'Chapter Name', 'Chapter Name', 'Chapter Name'],
    },
    {
      'title': 'Subtopic Number 2',
      'chapters': ['Chapter Name', 'Chapter Name', 'Chapter Name', 'Chapter Name'],
    },
    {
      'title': 'Subtopic Number 3',
      'chapters': ['Chapter Name', 'Chapter Name'],
    },
  ];

void toggleExpand(int index) {
  setState(() {
    _expandedIndex = (_expandedIndex == index) ? null : index;
  });
}

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Choose topic name",onPressed: (){Get.back();},),
    body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Course Topic Name",style: theme.textTheme.titleLarge,),
            16.vspace,
            Text("Below is the list of Subtopics and Chapters with your  Course will Cover",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white)),
            8.vspace,
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: subtopics.length,
              itemBuilder: (context, index) {
                final topic = subtopics[index];
                final isExpanded = _expandedIndex == index;
                return Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => toggleExpand(index),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          color: theme.splashColor,
                          alignment: Alignment.center,
                          child: Text(
                            topic['title'],
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      if (isExpanded) ...[
                        ...topic['chapters'].map<Widget>((chapter) {
                          return Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Colors.white, width: 2),
                              ),
                              color: Colors.black,
                            ),
                            child: Text(
                              chapter,
                              style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
                            ),
                          );
                        }).toList(),
                      ]
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: context.height/34,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomOutlineButton(onPressed: (){Get.back();},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
               CustomButton(onPressed: (){Get.toNamed(Appnames.generateCourseShow);},text: "Generate Course", width: context.width/2.5, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
              ],
            )
          ],
        ),
      ),
    );
  }
}