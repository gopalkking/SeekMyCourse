import 'package:flutter/material.dart';

class ReferEarnRowButton extends StatelessWidget {
  final String title;
  final Widget widget;
  const ReferEarnRowButton({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);
    return  Row(
                    children: [
                      Text(title,style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                      widget
                    ],
                   );
  }
}