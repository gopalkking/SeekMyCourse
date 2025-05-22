import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class SubscriptionView extends StatefulWidget {
  const SubscriptionView({super.key});

  @override
  State<SubscriptionView> createState() => _SubscriptionViewState();
}

class _SubscriptionViewState extends State<SubscriptionView> {
  bool showAll = false;
  int initialCount =3;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color blackColor = Color(0xff282828);
    final visibleItemCount = showAll ? 5 : initialCount;
    return Column(
      children: [
        Container(
          color: Color(AppColors.lightBlack),
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Active Subscription:",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor,fontWeight: FontWeight.bold),),
              8.vspace,
              Container(
                  color: blackColor,
                  padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                   CommonRowTextWidget(title: "Plan Name: ", answer: "Basic"),
                8.vspace,
                   CommonRowTextWidget(title: "Course Generated: ", answer: "15"),
                8.vspace,
                   CommonRowTextWidget(title: "Plan Expiry: ", answer: "10"),
                8.vspace,
                   CommonRowTextWidget(title: "Transaction Date: ", answer: "01-Jan-2025"),
                8.vspace,
                   CommonRowTextWidget(title: "Purchase Date: ", answer: "01-Jan-2025"),
                8.vspace,
                  ],
                ),
              ),
              16.vspace,
              Text("Plan Features",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor,fontWeight: FontWeight.bold),),
              8.vspace,
              Container(
                  color: blackColor,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("• Generate 10 Course / Year",style: theme.textTheme.bodyMedium,),
                8.vspace,
                  Text("• Theory & Image Course",style: theme.textTheme.bodyMedium,),                
                8.vspace,
                  Text("• Theory & Video Course",style: theme.textTheme.bodyMedium,),
                8.vspace,
                  Text("• Up to 10 Subtopics",style: theme.textTheme.bodyMedium,),
                8.vspace,
                  Text("• AI Tutor for doubt solving",style: theme.textTheme.bodyMedium,),
                8.vspace,
                  Text("• Create / Join Study Groups",style: theme.textTheme.bodyMedium,),
                8.vspace,
                  Text("• Export Course as PDF",style: theme.textTheme.bodyMedium,),
                8.vspace,
                  ],
                ),
              ),
               16.vspace,
              Text("Subscription History:",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor,fontWeight: FontWeight.bold),),
              8.vspace,
              Container(
                  color: blackColor,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListView.builder(
                    itemCount: visibleItemCount,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            16.vspace,
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(AppImages.subscription,height: 90,width: 90,),
                                  SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       Text("01-Jan-2025",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),),
                                       Text("Basic Plan membershipv(1-year)",style: theme.textTheme.bodyMedium,),
                                       Text("adfaasdadasadsdsadsa",style: theme.textTheme.bodyMedium,),
                                       8.vspace,
                                       CustomOutlineButton(onPressed: (){
                                        Get.toNamed(Appnames.subscriptionInvoice);
                                       },text: "View Invoice", width: context.width/3, height: 45, color: Colors.white,textcolor: theme.splashColor,)
                                      ],
                                    ),
                                  ),
                                     Text("INR 999",style: theme.textTheme.bodyMedium,),
                                ],
                               ),
                               16.vspace,
                               Divider(color: AppColors.appColors.shade200,thickness: 2,height: 6,),  
                          ],
                        );
                      }
                    ),
                            if (!showAll && 5 > initialCount)
                  Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(onTap: (){setState(() {
                    showAll = true;
                  });
                  }, child: Text("View More",style: theme.textTheme.bodyLarge,)))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}