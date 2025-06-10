import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Screens/Profile/pdf_service.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/subscription_invoice_text_widget.dart';

class SubscriptionInvoice extends StatefulWidget {
  const SubscriptionInvoice({super.key});

  @override
  State<SubscriptionInvoice> createState() => _SubscriptionInvoiceState();
}

class _SubscriptionInvoiceState extends State<SubscriptionInvoice> {
  String _selectedLanguage = 'English';
  final List<String> _languages = ['English', 'Tamil', 'Hindi'];
  final PdfServices pdfService = PdfServices();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
            appBar: CommonAppbarWidget(
        text: "",
        onPressed: () {},
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                      },
                    ),
                    Positioned(
                      right: 13,
                      top: 14,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.asset(AppImages.photo, height: 40, width: 40),
                ),
                8.hspace,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vishnu",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isDense: true,
                        value: _selectedLanguage,
                        dropdownColor: Colors.black87,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.white70,
                        ),
                        items:
                            _languages.map((lang) {
                              return DropdownMenuItem<String>(
                                value: lang,
                                child: Text(lang),
                              );
                            }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              color: Color(AppColors.lightBlack),
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
                  CommonRowTextWidget(title: "Product: ", answer: " SeekMYCOURSE Subscription"),
                  8.vspace,
                    CommonRowTextWidget(title: "Plan: ", answer: "Basic"),
                  8.vspace,
                    CommonRowTextWidget(title: "Billing Type: ", answer: "Monthly"),
                   8.vspace,
                    CommonRowTextWidget(title: "Purchase Date: ", answer: "01-Jan-2025"),
                  8.vspace,
                    CommonRowTextWidget(title: "Plan Expiry Date: ", answer: "31-Jan-2025"),
                  8.vspace,
                    CommonRowTextWidget(title: "User Id: ", answer: "102345698"),
                  16.vspace,
                    Container(
                      padding: EdgeInsets.all(16),
                      color: AppColors.appColors.shade50,
                      child:   CommonRowTextWidget(title: "Payment ID: ", answer:"asdafdsfadfdffd"),
                    ),
                  16.vspace,
                  Table(
                    columnWidths: {
                       0: FixedColumnWidth(150), 
                       1: FixedColumnWidth(109),
                    },
                    children: [
                      TableRow(
                        decoration: BoxDecoration(color: AppColors.appColors.shade50,border: Border(bottom: BorderSide(color: AppColors.appColors.shade200,width: 2))),
                        children: [
                          SubscriptionInvoiceTextWidget(text: "Services"),
                          SubscriptionInvoiceTextWidget(text: "Period"),
                          SubscriptionInvoiceTextWidget(text: "Amount")
                        ]
                      ),
                      TableRow(
                        decoration: BoxDecoration(color: AppColors.appColors.shade50),
                        children: [
                          SubscriptionInvoiceTextWidget(text: "SeekMYCOURSEYearly Subscription"),
                          SubscriptionInvoiceTextWidget(text: "01-Jan-2025 to 01-Jan-2026"),
                          SubscriptionInvoiceTextWidget(text: "₹1999.00")
                        ]
                      )
                    ],
                  ),
                   Table(
                      columnWidths: {
                         0: FixedColumnWidth(255), 
                      },
                      border: TableBorder(top: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black)),
                      children: [
                        TableRow(
                             decoration: BoxDecoration(color: AppColors.appColors.shade50),
                          children: [
                            SubscriptionInvoiceTextWidget(text: "Subtotal :",color: theme.splashColor,),
                            SubscriptionInvoiceTextWidget(text: "₹1999.00")
                          ]
                        ),
                       TableRow(
                           decoration: BoxDecoration(color: AppColors.appColors.shade50),
                          children: [
                            SubscriptionInvoiceTextWidget(text: "Tax(GST) :",color: theme.splashColor,),
                            SubscriptionInvoiceTextWidget(text: "₹360.00")
                          ]
                        ),
                          TableRow(
                               decoration: BoxDecoration(color: AppColors.appColors.shade50),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text("TOTAL :",style: theme.textTheme.bodyLarge!.copyWith(color: theme.splashColor,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            ),
                            SubscriptionInvoiceTextWidget(text: "₹1999.00")
                          ]
                        ),
                      ],
                                       ),
                  32.vspace,
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomButton(
                      text: "Download Invoice",
                      width: context.width/2.5,
                      height: context.height / 16,
                      color: theme.splashColor,
                      textcolor: Colors.black,
                      onPressed: () async{
                            final data = await pdfService.generateSubscriptionInvoice();
                                          pdfService.savepdfFile("SMC_Subscription_invoice", data);
                      },
                    ),
                  ),
                  32.vspace
                   
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}