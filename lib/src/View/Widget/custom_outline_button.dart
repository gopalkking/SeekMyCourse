import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Function()? onPressed;
  final Color? textcolor;
  final double? textSize;
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    this.onPressed,
    this.textcolor, this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(onPressed: onPressed,  style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(),
            side: BorderSide(color: color),
          ) ,child: Text(text,style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: textcolor,fontSize: textSize??16
          ),)),
    );
  }
}
