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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),
        ),
        Expanded(child: Text(answer, style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white), maxLines: 2,)),
      ],
    );
  }
}
