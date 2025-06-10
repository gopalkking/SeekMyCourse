import 'package:flutter/material.dart';

class CommonRowTextWidget extends StatelessWidget {
  final String title;
  final String answer;
  const CommonRowTextWidget({super.key, required this.title, required this.answer});

  @override
  Widget build(BuildContext context) {
       ThemeData theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: theme.textTheme.bodyMedium!.copyWith(color: theme.splashColor),),
                      Flexible(
                        flex: 2,
                        child: Text(answer,style: theme.textTheme.bodyMedium)),
                    ],
                   );
  }
}