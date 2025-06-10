import 'package:flutter/material.dart';

class HomeRowText extends StatelessWidget {
  final String title;
  final String answer;
  const HomeRowText({super.key, required this.title, required this.answer});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
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
