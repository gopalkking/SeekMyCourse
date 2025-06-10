import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class ReferEarnWidget extends StatelessWidget {
  final String imagetext;
  final String title;
  final String value;
  const ReferEarnWidget({
    super.key,
    required this.imagetext,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: 120,
      height: 160,
      padding: EdgeInsets.all(8),
      color: Colors.black,
      child: Column(
        children: [
          Image.asset(imagetext, height: 50, width: 50),
          8.vspace,
          Text(
            title,
            style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          8.vspace,
          Text(value, style: theme.textTheme.titleLarge),
        ],
      ),
    );
  }
}
