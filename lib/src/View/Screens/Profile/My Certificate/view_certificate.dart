import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/filter_helper.dart';

class ViewCertificate extends StatefulWidget {
  const ViewCertificate({super.key});

  @override
  State<ViewCertificate> createState() => _ViewCertificateState();
}

class _ViewCertificateState extends State<ViewCertificate> {
    List<String> menuItems = [
    'This Month',
    'Last Month',
    'Last 3 Month',
    'Last 6 Months',
  ];

  final GlobalKey _filterKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "My Certificate",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
                        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Certificate", style: theme.textTheme.titleMedium),
                  Row(
                    children: [
                      Text("All Courses", style: theme.textTheme.bodyMedium),
                      8.hspace,
                      InkWell(
                        key: _filterKey,
                        onTap: () {
                          showFilterMenu(
                            context: context,
                            key: _filterKey,
                            items:
                                menuItems
                                    .map(
                                      (item) => buildPopMenuItem(item, context),
                                    )
                                    .toList(),
                          );
                        },
                        child: Image.asset(
                          AppImages.filter,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            16.vspace,
            Container(
              color: Color(AppColors.lightBlack),
              padding: EdgeInsets.all(6),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(AppImages.logo,width: 200,),
                      16.vspace,
                      Text("CERTIFICATION OF COMPLETION",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
                      16.vspace,
                      Text("This is to certify that",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,fontSize: 12),),
                      16.vspace,
                      Text("SANTHOSH.S",style: theme.textTheme.bodyMedium,),
                      Divider(color: AppColors.appColors.shade200,thickness: 2,height: 6,indent: 45,endIndent: 45,),
                      16.vspace,
                      Text("Has successfully completed the course on",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,fontSize: 12),),
                      16.vspace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("This is system generated certificate",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,fontSize: 9),),
                          Image.asset(AppImages.completedBatch),
                          Text("A Product of Morpheus Code",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,fontSize: 9),),
                        ],
                      ),

                    ],
                  ),
                                        Positioned(
                              left: 0,
                              top: 0,
                              bottom: 0,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),color: Colors.white,),
                              child: Text("AI COURSE GENERATOR",style: theme.textTheme.bodySmall!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                        
                ],
              ),
            ),
            32.vspace,
             CustomButton(
                        onPressed: () {
                          
                        },
                        text: "Download",
                        width: double.infinity,
                        height: 55,
                        color: theme.splashColor,
                        textcolor: Colors.black,
                        textsize: 14,
                      )
          ],
        ),
      ),
    );
  }
   PopupMenuItem<String> buildPopMenuItem(String text, BuildContext context) {
    final theme = Theme.of(context);
    return PopupMenuItem<String>(
      value: text,
      child: Text(
        text,
        style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
      ),
    );
  }
}