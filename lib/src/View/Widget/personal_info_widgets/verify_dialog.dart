import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class VerifyDialog extends StatefulWidget {
  final String text1;
  final String? text2;
  final Widget widget;
  final String centerButtontext;
  final String buttontext;
  final String canceltext;
  final Function()? onPressed;
  final Function()? cancelButton;
  final Function()? centerButton;
  final Function()? resendButton;
  final Color? buttoncolor;
  const VerifyDialog({super.key, required this.text1, this.text2, required this.widget, required this.buttontext, required this.canceltext, this.onPressed, this.cancelButton, this.buttoncolor, required this.centerButtontext, this.centerButton, this.resendButton});

  @override
  State<VerifyDialog> createState() => _VerifyDialogState();
}

class _VerifyDialogState extends State<VerifyDialog> {
   int _seconds = 56;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
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
            16.vspace,
            Center(
              child: Text(
                widget.text1,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 16,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            16.vspace,
            Text(
              widget.text2.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            16.vspace,
            widget.widget,
            32.vspace,
            CustomButton(text: widget.centerButtontext, width: MediaQuery.of(context).size.width/1, height: 45, color: widget.buttoncolor??Colors.red,textcolor: Colors.black,onPressed:widget.onPressed,textsize: 14,),
            16.vspace,
            Row(
              children: [
                Text("Didn’t receive OTP?",style:  theme.textTheme.bodyMedium,),
                _seconds > 0
                    ? Row(
                      children: [
                        Text(" Resend -", style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor)),
                        Text(" $_seconds s", style: theme.textTheme.bodyMedium),
                      ],
                    )
                    : TextButton(
                        onPressed: widget.resendButton,
                        child: Text("Resend",style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                      ),
                
              ],
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CustomOutlineButton(text: widget.canceltext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: Colors.white,onPressed: widget.cancelButton,textSize: 14,),
              32.hspace,
              CustomButton(text: widget.buttontext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: widget.buttoncolor??Colors.red,textcolor: Colors.black,onPressed:widget.onPressed,textsize: 14,)
            ],),
            16.vspace
          ],
        ),
      ),
    );
  }
}
