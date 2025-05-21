import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class UpdateDialog extends StatelessWidget {
  final String text1;
  final String? text2;
  final Widget widget;
  final String buttontext;
  final String canceltext;
  final Function()? onPressed;
  final Function()? cancelButton;
  final Color? buttoncolor;
  const UpdateDialog({super.key, required this.text1, this.text2, required this.buttontext, required this.canceltext, this.onPressed, this.cancelButton, this.buttoncolor, required this.widget});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      insetPadding: EdgeInsets.all(16),
      backgroundColor: theme.scaffoldBackgroundColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            32.vspace,
            Center(
              child: Text(
                text1,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 16,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            16.vspace,
            Text(
              text2.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            widget,
            32.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CustomOutlineButton(text: canceltext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: Colors.white,onPressed: cancelButton,textSize: 14,),
              32.hspace,
              CustomButton(text: buttontext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: buttoncolor??Colors.red,textcolor: Colors.black,onPressed:onPressed,textsize: 14,)
            ],),
            32.vspace
          ],
        ),
      ),
    );
  }
}
