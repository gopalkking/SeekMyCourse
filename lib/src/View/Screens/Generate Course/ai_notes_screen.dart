import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class AiNotesScreen extends StatefulWidget {
  const AiNotesScreen({super.key});

  @override
  State<AiNotesScreen> createState() => _AiNotesScreenState();
}

class _AiNotesScreenState extends State<AiNotesScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(
        text: "AI Assistant",
        onPressed: () {Get.back();},
        action: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Notes", style: theme.textTheme.titleLarge),
            SizedBox(height: context.height / 3),
            Center(
              child: Text(
                "Create your first Note",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: AppColors.appColors.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: PhysicalModel(
          color: theme.splashColor,
          elevation: 10,
          shadowColor: Colors.black,
          shape: BoxShape.circle,
          child: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            backgroundColor: theme.splashColor,
            elevation: 0,
            child: const Icon(Icons.save, color: Colors.black, size: 30),
          ),
        ),
      ),
    );
  }
}
