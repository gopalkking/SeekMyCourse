import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';

class MyDialogWidget extends StatelessWidget {
  final String text1;
  final String? text2;
  final String buttontext;
  final String canceltext;
  final Function()? onPressed;
  final Function()? cancelButton;
  final Color? buttoncolor;
  const MyDialogWidget(
      {super.key,
      required this.text1,
      this.text2,
      required this.buttontext,
      required this.canceltext,
      this.onPressed,
      this.cancelButton, this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: theme.scaffoldBackgroundColor,
      contentPadding: const EdgeInsets.all(16),
      title: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Text(
                text1,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 16,color: Colors.red),
                textAlign: TextAlign.center,
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
              16.vspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                CustomOutlineButton(text: canceltext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: Colors.white,onPressed: cancelButton,textSize: 14,),
                32.hspace,
                CustomButton(text: buttontext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: buttoncolor??Colors.red,textcolor: Colors.black,onPressed:onPressed,textsize: 14,)
              ],)
            ],
          ),
          Positioned(
              top: -45,
              right: -45,
              child:IconButton(
                      icon: const Icon(Icons.cancel_rounded,
                          color: Colors.white, size: 36),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ), ),
        ],
      ),
    );
  }
}
