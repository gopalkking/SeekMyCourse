import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/Refer_Earn_widgets/refer_earn_row_button.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class BankDetail extends StatelessWidget {
  const BankDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Bank details",onPressed: (){Get.back();},),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  32.vspace,
                  CustomButton(text: "Pay Out", width: context.width/3.5, height: context.height/18, color: theme.splashColor,textcolor: Colors.black,onPressed:(){Get.toNamed(Appnames.payOut);},),
                  16.vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
              children: [
                   InkWell(onTap: (){},child: Image.asset(AppImages.pdf,height: 20,width: 20,),),
                   8.hspace,
                   InkWell(onTap: (){},child: Image.asset(AppImages.excel,height: 20,width: 20,),)
              ],
             ),
             16.vspace,
                 Container(
                padding: EdgeInsets.all(18),
                color: Color(AppColors.lightBlack),
                child:Column(
                        children: [
                          CommonRowTextWidget(title: "Date: ", answer: "01-jan-2025"),
                          8.vspace,
                          ReferEarnRowButton(title: "Link: ", widget: InkWell(onTap: (){launchUrl(Uri.parse("https://www.google.com/"));}, child:Text("https://www.google.com/",style: theme.textTheme.bodyLarge,),)),
                          8.vspace,
                          CommonRowTextWidget(title: "Commission: ", answer: "₹ 250"),
                          8.vspace,
                           CommonRowTextWidget(title: "Transaction id: ", answer: "aasdertyuhjk12"),
                          8.vspace,
                          CommonRowTextWidget(title: "Action: ", answer: "View"),
                        ],
                  ),
              )
          ],
        ),
      ),
    );
  }
}