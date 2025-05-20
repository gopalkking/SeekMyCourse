import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Function()? onPressed;
  final Color? textcolor;
  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    this.onPressed,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(onPressed: onPressed,  style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(),
            backgroundColor: color
          ) ,child: Text(text,style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: textcolor,fontSize: 16
          ),)),
    );
  }
}
