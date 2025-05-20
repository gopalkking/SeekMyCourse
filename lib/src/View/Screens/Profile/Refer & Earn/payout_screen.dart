import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';

class PayoutScreen extends StatelessWidget {
  const PayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Payout",onPressed: (){},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            32.vspace,
            Container(
              color: Color(AppColors.lightBlack),
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  CommonRowTextWidget(title: "Commission Slip No: ", answer: "MCTLLP/01"),
                  8.vspace,
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        Image.asset(AppImages.morpheus,width: 180,height: 26,),
                        Image.asset(AppImages.morpheusCode,width: 180,height: 26,),
                      ],
                    ),
                  ),
                  8.vspace,
                  CommonRowTextWidget(title: "Date: ", answer: "01-jan-2025"),
                  8.vspace,
                    CommonRowTextWidget(title: "Pay Period: ", answer: "Dec:2025"),
                  8.vspace,
                    CommonRowTextWidget(title: "Product: ", answer: "Seek My Course"),
                  8.vspace,
                    CommonRowTextWidget(title: "Link: ", answer: "https ://app.seekmysourse.com/signup/12345687898"),
                  8.vspace,
                    CommonRowTextWidget(title: "User Name: ", answer: "Vishnu Nair"),
                  8.vspace,
                    CommonRowTextWidget(title: "User Id: ", answer: "102345698"),
                  8.vspace,
                  Table(
                    border: TableBorder.all(color: theme.splashColor),
                    columnWidths: {
                      0:IntrinsicColumnWidth(flex: 1,),
                      1:FixedColumnWidth(60)
                    },
                    children: [
                      TableRow(
                     children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Earnings",textAlign: TextAlign.center,),
                          )
                        ]
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}