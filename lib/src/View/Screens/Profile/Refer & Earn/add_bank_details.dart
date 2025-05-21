import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class AddBankDetails extends StatefulWidget {
  const AddBankDetails({super.key});

  @override
  State<AddBankDetails> createState() => _AddBankDetailsState();
}

class _AddBankDetailsState extends State<AddBankDetails> {
  TextEditingController bankName = TextEditingController();
  TextEditingController accountNumber = TextEditingController();
  TextEditingController ifscCode = TextEditingController();
  TextEditingController accountHolder = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(
        text: "Add Bank Details",
        onPressed: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            32.vspace,
            CustomButton(
              text: "+ Add Bank Account",
              width: context.width / 2,
              height: context.height / 18,
              color: theme.splashColor,
              textcolor: Colors.black,
              onPressed: () {},
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(AppImages.pdf, height: 20, width: 20),
                ),
                8.hspace,
                InkWell(
                  onTap: () {},
                  child: Image.asset(AppImages.excel, height: 20, width: 20),
                ),
              ],
            ),
            16.vspace,
            Container(
              padding: EdgeInsets.all(18),
              color: Color(AppColors.lightBlack),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.vspace,
                  Text("Bank Name", style: theme.textTheme.bodyLarge),
                  TextFormWidget(
                    hintText: "e.g. Axis Bank",
                    textEditingController: bankName,
                    color: AppColors.appColors.shade300,
                    fillColor: AppColors.appColors.shade50,
                  ),
                  32.vspace,
                  Text("Account Number", style: theme.textTheme.bodyLarge),
                  TextFormWidget(
                    hintText: "e.g. 10416756666464",
                    textEditingController: accountNumber,
                    color: AppColors.appColors.shade300,
                    fillColor: AppColors.appColors.shade50,
                  ),
                  32.vspace,
                  Text("IFSC Course", style: theme.textTheme.bodyLarge),
                  TextFormWidget(
                    hintText: "e.g. UTIB0014",
                    textEditingController: ifscCode,
                    color: AppColors.appColors.shade300,
                    fillColor: AppColors.appColors.shade50,
                  ),
                  32.vspace,
                  Text("Account Holder", style: theme.textTheme.bodyLarge),
                  TextFormWidget(
                    hintText: "e.g. Vishnu Nair",
                    textEditingController: accountHolder,
                    color: AppColors.appColors.shade300,
                    fillColor: AppColors.appColors.shade50,
                  ),
                  32.vspace,
                  CustomButton(
                    text: "Add Card",
                    width: double.infinity,
                    height: context.height / 18,
                    color: theme.splashColor,
                    textcolor: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
