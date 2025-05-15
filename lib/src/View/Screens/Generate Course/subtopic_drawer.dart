import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';

class SubtopicDrawer extends StatefulWidget {
  const SubtopicDrawer({super.key});

  @override
  State<SubtopicDrawer> createState() => _SubtopicDrawerState();
}

class _SubtopicDrawerState extends State<SubtopicDrawer> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Drawer(
      width: context.width / 1.15,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical:90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Divider(color: Colors.white, thickness: 2),
                    Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        trailing: SizedBox.shrink(), 
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtopic Name",
                              style: theme.textTheme.bodyLarge,
                            ),
                            Image.asset(AppImages.tick)
                          ],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Column(
                              children: List.generate(3, (i) {
                                return Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: (){},
                                        child: Text(
                                          "Lesson",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Icon(Icons.check, color: Colors.white),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            const Divider(color: Colors.white, thickness: 2),
            Padding(
              padding: const EdgeInsets.all(16),
              child: InkWell(onTap:(){},child:Text("Start Quiz", style: theme.textTheme.bodyLarge)),
            ),
            const Divider(color: Colors.white, thickness: 2),
          ],
        ),
      ),
    );
  }
}
