import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/commonplan_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';

class SubscriptionPlans extends StatefulWidget {
  const SubscriptionPlans({super.key});

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D1D1D),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Subscription Plans',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
              ),
              16.vspace,
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.from(
                      alpha: 1,
                      red: 1,
                      green: 1,
                      blue: 1,
                    ),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Starter',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Color(0xff02DCCB),
                      ),
                    ),
                    8.vspace,
                    Center(
                      child: Text(
                        'FREE',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(
                          color: Color(0xff0AD1BD),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    16.vspace,
                    CustomButton(
                      text: 'Select',
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      color: Color(0xff00D5BE),
                      textcolor: Colors.black,
                      onPressed: () {},
                    ),
                    16.vspace,
                    ListTile(
                      leading: Image.asset(AppImages.done),
                      title: Text(
                        'Generate 1 Free course',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(AppImages.done),
                      title: Text(
                        'Theory & Image course',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(AppImages.done),
                      title: Text(
                        'Up to 05 Subtopics',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(AppImages.done),
                      title: Text(
                        'AI Tutor for doubt solving',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              24.vspace,
              CommonplanWidget(
                decoration: BoxDecoration(
                  color: Color(0xff02DCCB),
                ), 
                planname: 'Basic', 
                amount: '₹999 / Year', 
                billname: 'Billed Annually', 
                generatetext: 'Generate 10 course/Year',
                imagetext: 'Theory & Image course',
                videotext: 'Theory & Video Course',
                subtopictext: 'Up to 10 Subtopics',
                aitutortext:  'AI Tutor for doubt solving',
                studytext: 'Create / Join study Groups',
                exporttext: 'Export Course as PDF',
                plancolor: Color(0xff282828), 
                billcolor: Color(0xff282828),
                amountcolor: Color(0xff282828), 
                buttonwidget: CustomButton(text: 'Select', 
                width: MediaQuery.of(context).size.width, 
                height: 50, 
                color: Colors.black,onPressed: (){},
                textcolor: Colors.white,), 
                textColor: Colors.black, 
                iconcolor: Colors.black),
              24.vspace,
              CommonplanWidget(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                ), 
                planname: 'Pro', 
                amount: '₹999 / Year', 
                billname: 'Billed Annually', 
                generatetext: 'Generate 10 course/Year',
                imagetext: 'Theory & Image course',
                videotext: 'Theory & Video Course',
                subtopictext: 'Up to 10 Subtopics',
                aitutortext:  'AI Tutor for doubt solving',
                studytext: 'Create / Join study Groups',
                exporttext: 'Export Course as PDF',
                plancolor: Color(0xff02DCCB), 
                amountcolor: Color(0xff02DCCB), 
                billcolor: Colors.white,
                buttonwidget: CustomButton(text: 'Select', 
                width: MediaQuery.of(context).size.width, 
                height: 50, 
                color: Color(0xff00D5BE),onPressed: (){},
                textcolor: Colors.black,), 
                textColor: Colors.white, 
                iconcolor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
