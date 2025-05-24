import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class ChatingStudyGroup extends StatefulWidget {
  const ChatingStudyGroup({super.key});

  @override
  State<ChatingStudyGroup> createState() => _ChatingStudyGroupState();
}

class _ChatingStudyGroupState extends State<ChatingStudyGroup> {
  final List<Map<String, dynamic>> messages = [
    {
      'type': 'text',
      'content':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
      'time': '12:05 AM',
      'avatar': 'VN',
    },
    {
      'type': 'image',
      'content': AppImages.course,
      'time': '12:05 AM',
      'avatar': 'VN',
    },
    {
      'type': 'text',
      'content':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
      'time': '12:05 AM',
      'avatar': 'VN',
    },
    {
      'type': 'image',
      'content': AppImages.course,
      'time': '12:05 AM',
      'avatar': 'VN',
    },
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColors.lightBlack),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(AppImages.photo, height: 40, width: 40),
            ),
            8.hspace,
            Text("Study Group Name", style: theme.textTheme.titleSmall),
          ],
        ),
      ),
      body: Column(
        children: [
          8.vspace,
          const Center(
            child: Text(
              "01-Jan-2025",
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),
                    
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Color(AppColors.lightBlack),
                        child: Text(msg['avatar']),
                      ),
                      8.hspace,
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2C2C2C),
                          ),
                          child: Column(
                            children: [
                              msg['type'] == 'text'
                                  ? Text(
                                    msg['content'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                  : ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    child: Image.asset(msg['content']),
                                  ),
                              8.vspace,
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  msg['time'],
                                  style: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Icon(Icons.add, color: Colors.white),
                  8.hspace,
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
