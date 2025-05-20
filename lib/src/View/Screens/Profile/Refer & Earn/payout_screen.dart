import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/Refer_Earn_widgets/payout_container_table_widget.dart';
import 'package:seek_my_course/src/View/Widget/Refer_Earn_widgets/payout_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';

class PayoutScreen extends StatefulWidget {
  const PayoutScreen({super.key});

  @override
  State<PayoutScreen> createState() => _PayoutScreenState();
}

class _PayoutScreenState extends State<PayoutScreen> {
 
  int _itemsPerPage = 6;
  int totalItems = 30;
  int currentPage = 0;

  List<int> perPageOptions = [6,10, 15, 20];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Payout",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            32.vspace,
            Container(
              color: Color(AppColors.lightBlack),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                   Container(
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all(color: theme.splashColor)),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Earnings',
                      style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Table(
                    border: TableBorder.all(color: theme.splashColor),
                      columnWidths: const {
                               0: FixedColumnWidth(60), 
                               1: FlexColumnWidth(2),   
                               2: FlexColumnWidth(3),   
                               3: FlexColumnWidth(3),   
  },
                    children: [
                       TableRow(
                       decoration: BoxDecoration(color: theme.splashColor),
                     children: [
                      PayoutContainerTableWidget(text: "Sr.NO", height:context.height/16 ,border:  Border.all(color: Colors.black,width: 2)),
                      PayoutContainerTableWidget(text: "Date", height: context.height/16,border:  Border( top: BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))),
                      PayoutContainerTableWidget(text: "Total Paid Signups", border: Border( top: BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))),
                      PayoutContainerTableWidget(text: "Commission Earned", border: Border( top: BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2)))
                        ]
                      ),
                         TableRow(
                     children: [
                      PayoutTextWidget(text: "01"),
                      PayoutTextWidget(text: "01-Jan-2025"),
                      PayoutTextWidget(text: "100"),
                      PayoutTextWidget(text: "₹ 3500.00"),
                        ]
                      ),
                    
                    ],
                  ),
                  Table(
                    border: TableBorder.all(color: theme.splashColor),
                     columnWidths: const {
                       0: FlexColumnWidth(2.2),
                       1: FlexColumnWidth(),
                    },
                children: [
                 TableRow(
                    children: [
                      PayoutTextWidget(text: "Gross Earnings"),
                      PayoutTextWidget(text: "₹ 3500.00")
                        ],
                      ),
                   ]                ,
                ),
                    32.vspace,
                   Container(
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all(color: theme.splashColor)),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Deductions',
                      style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Table(
                    border: TableBorder.all(color: theme.splashColor),
                      columnWidths: const {
                               0: FixedColumnWidth(60), 
                               1: FlexColumnWidth(3.3),   
                               2: FlexColumnWidth(2),   
  },
                    children: [
                       TableRow(
                       decoration: BoxDecoration(color: theme.splashColor),
                     children: [
                      PayoutContainerTableWidget(text: "Sr.NO", height:context.height/16 ,border:  Border.all(color: Colors.black,width: 2)),
                      PayoutContainerTableWidget(text: "Deduction", height: context.height/16,border:  Border( top: BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))),
                      PayoutContainerTableWidget(text: "Amount", height: context.height/16,border: Border( top: BorderSide(color: Colors.black,width: 2),bottom: BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2))),
                        ]
                      ),
                         TableRow(
                     children: [
                      PayoutTextWidget(text: "01"),
                      PayoutTextWidget(text: "TDS (Tax Deducted at Source)"),
                      PayoutTextWidget(text: "₹ 350.00"),
                        ]
                      ),
                    
                    ],
                  ),
                  Table(
                    border: TableBorder.all(color: theme.splashColor),
                     columnWidths: const {
                       0: FlexColumnWidth(2.2),
                       1: FlexColumnWidth(),
                    },
                children: [
                 TableRow(
                    children: [
                      PayoutTextWidget(text: "Total Deductions"),
                      PayoutTextWidget(text: "₹ 350.00")
                        ],
                      ),
                        TableRow(
                    children: [
                      PayoutTextWidget(text: "Net Earnings"),
                      PayoutTextWidget(text: "₹ 3250.00")
                        ],
                      ),
                   ]                ,
                ),
                32.vspace,
                   CommonRowTextWidget(title: "In words: ", answer: "Three Thousand Two Hundred and Fifty Only"),
                32.vspace,
                Text("Transaction Details",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor),),
                8.vspace,
                   CommonRowTextWidget(title: "Bank Name: ", answer: "Axis Bank"),
                8.vspace,
                   CommonRowTextWidget(title: "Account Number: ", answer: "102457894561"),
                8.vspace,
                   CommonRowTextWidget(title: "IFSC Code: ", answer: "UIF2349876"),
                8.vspace,
                   CommonRowTextWidget(title: "Account Holder Name: ", answer: "Vishnu Nair"),
                8.vspace,
                   CommonRowTextWidget(title: "Transaction Date: ", answer: "01-Jan-2025"),
                8.vspace,
                   CommonRowTextWidget(title: "Transaction ID: ", answer: "657894579888"),
                8.vspace,
                   CommonRowTextWidget(title: "Status: ", answer: "Completed"),
                     32.vspace,
                  CustomButton(
                    text: "Download Commission Slip",
                    width: double.infinity,
                    height: context.height / 18,
                    color: theme.splashColor,
                    textcolor: Colors.black,
                    onPressed: () {},
                  ),
                  32.vspace
                ],
              ),
            ),

            32.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text("Items per page",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),),
              8.hspace,
             Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: DropdownButton<int>(
              value: _itemsPerPage,
              dropdownColor: Colors.black,
              iconEnabledColor: Colors.white,
              underline: SizedBox(),
              style: TextStyle(color: Colors.white),
              items: perPageOptions.map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _itemsPerPage = newValue!;
                  currentPage = 0;
                });
              },
            ),
          ),
          8.vspace,
            Text(
            ' ${'1'} - ${_itemsPerPage.toString().padLeft(2,'0')} of ${30}',
            style: TextStyle(color: Colors.white),
          ),
          InkWell(onTap: (){},child: Icon(Icons.chevron_left, color: Colors.white),),
          InkWell(onTap: (){Get.toNamed(Appnames.referralProgram);},child: Icon(Icons.chevron_right, color: Colors.white),),
            ],)
          ],
        ),
      ),
    );
  }
}