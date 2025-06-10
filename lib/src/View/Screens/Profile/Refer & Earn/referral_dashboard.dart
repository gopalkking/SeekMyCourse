import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/Refer_Earn_widgets/refer_earn_row_button.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/Refer_Earn_widgets/refer_earn_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferralDashboard extends StatefulWidget {
  const ReferralDashboard({super.key});

  @override
  State<ReferralDashboard> createState() => _ReferralDashboardState();
}

class _ReferralDashboardState extends State<ReferralDashboard> {
  bool showAll = false;
  int initialCount =3;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final visibleItemCount = showAll ? 5 : initialCount;
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Referral dashboard",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text("Referral dashboard",style: theme.textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),),
               InkWell(onTap: (){},child: Image.asset(AppImages.settings,height: 20,width: 20,),)
              ],
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReferEarnWidget(imagetext: AppImages.totalReferrals, title: "Total \nReferrals", value: "12"),
                ReferEarnWidget(imagetext: AppImages.totalUsers, title: "Total \nUsers", value: "20"),
                ReferEarnWidget(imagetext: AppImages.totalEarnings, title: "Total \nEarnings", value: "120"),
              ],
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                       Text("Search by month / link",style: theme.textTheme.bodyMedium),
                       8.hspace,
                       InkWell(onTap: () async{
                         await showMenu(
                    context: context,
                    position: const RelativeRect.fromLTRB(50, 380, 50, 0),
                    color: Colors.black,
                    items: [
                      PopupMenuItem(
                        value: 'This Month',
                        child: Text(
                          'This Month',
                          style:
                              theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Last Month',
                        child: Text(
                          'Last Month',
                          style:
                              theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Last 3 Month',
                        child: Text(
                          'Last 3 Month',
                          style:
                              theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'Last 6 Months',
                        child: Text(
                          'Last 6 Months',
                          style:
                              theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
                        ),
                      ),
                    ],
                  );
                       },child: Image.asset(AppImages.filter,height: 25,width: 25,),)
                  ],
                ),
                Row(
              children: [
                   InkWell(onTap: (){},child: Image.asset(AppImages.pdf,height: 20,width: 20,),),
                   8.hspace,
                   InkWell(onTap: (){},child: Image.asset(AppImages.excel,height: 20,width: 20,),)
              ],
             )
              ],
            ),
            16.vspace,
            Container(
              padding: EdgeInsets.all(18),
              color: Color(AppColors.lightBlack),
              child:Column(
                children: [
                  ListView.builder(
                    itemCount: visibleItemCount,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index) {
                      return Column(
                        children: [
                          16.vspace,
                         CommonRowTextWidget(title: "S.No: ", answer: "01"),
                          8.vspace,
                         CommonRowTextWidget(title: "Month: ", answer: "01-jan-2025"),
                          8.vspace,
                          ReferEarnRowButton(title: "Link: ", widget: InkWell(onTap: (){launchUrl(Uri.parse("https://www.google.com/"));}, child:Text("https://www.google.com/",style: theme.textTheme.bodyLarge,),)),
                          8.vspace,
                         CommonRowTextWidget(title: "Commission: ", answer: "₹ 250"),
                          8.vspace,
                          ReferEarnRowButton(title: "Actions:  ", widget: Row(children: [
                            CustomButton(text: "Pay Requested", width: context.width/3.5, height: context.height/18, color: theme.splashColor,textcolor: Colors.black,onPressed:(){Get.toNamed(Appnames.addBankDetails);},textsize: 14,),
                            16.hspace,
                            CustomOutlineButton(text: "View", width: context.width/3.7, height: context.height/18, color: Colors.white,onPressed: (){Get.toNamed(Appnames.bankDetail);},textSize: 14,),
                          ],)),
                          32.vspace,
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
            )
              
          ],
        ),
      ),
    );
  }
}