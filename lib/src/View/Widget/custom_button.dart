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
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color),
        child: Center(
          child: Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: textcolor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
