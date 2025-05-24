import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class MyStudyGroup extends StatefulWidget {
  const MyStudyGroup({super.key});

  @override
  State<MyStudyGroup> createState() => _MyStudyGroupState();
}

class _MyStudyGroupState extends State<MyStudyGroup> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "My study group",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text("My study group", style: theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold,),),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Appnames.createStudyGroup);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(shape: BoxShape.circle,color: theme.splashColor),
                      child: Icon(Icons.add,color: Colors.black,),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}