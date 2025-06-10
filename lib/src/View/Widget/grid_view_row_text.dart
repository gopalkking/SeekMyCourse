import 'package:flutter/material.dart';

class GridViewRowText extends StatelessWidget {
  final String title;
  final String answer;
  final MainAxisAlignment? mainAxisAlignment;
  const GridViewRowText({super.key, required this.title, required this.answer, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: mainAxisAlignment??MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.bodySmall!.copyWith(color: theme.splashColor),
        ),
        Expanded(child: Text(answer, style: theme.textTheme.bodySmall!.copyWith(color: Colors.white), maxLines: 2,)),
      ],
    );
  }
}
