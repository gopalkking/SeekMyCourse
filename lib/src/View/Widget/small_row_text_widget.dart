import 'package:flutter/material.dart';

class SmallRowTextWidget extends StatelessWidget {
  final String title;
  final String answer;
  final MainAxisAlignment? mainAxisAlignment;
  const SmallRowTextWidget({super.key, required this.title, required this.answer, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: mainAxisAlignment??MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.bodySmall!.copyWith(color: theme.splashColor),
        ),
        Text(answer, style: theme.textTheme.bodySmall!.copyWith(color: Colors.white)),
      ],
    );
  }
}
