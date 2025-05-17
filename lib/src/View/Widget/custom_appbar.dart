import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const CustomAppBar({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
       backgroundColor: Color(0xff1D1D1D),
        leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text(text,style: theme.textTheme.titleSmall),
    );
  }
}