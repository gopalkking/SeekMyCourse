import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';

class AiChatScreen extends StatefulWidget {
  const AiChatScreen({super.key});

  @override
  State<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends State<AiChatScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
               SizedBox(height: context.height/7,),
              CircleAvatar(backgroundColor: Color(AppColors.lightBlack),maxRadius: 80,child: Image.asset(AppImages.chatIcon),),
              8.vspace,
              Text("Welcome to AI Assistant",style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),),
              8.vspace,
              Text("Start chatting with AI Assistance \nchat now",style: theme.textTheme.bodyLarge,textAlign: TextAlign.center,),
              32.vspace,
              CustomButton(onPressed: (){},text: "Start Chat", width: context.width/1.3, height: context.height/19, color: theme.splashColor,textcolor: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}