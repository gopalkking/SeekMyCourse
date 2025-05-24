import 'package:flutter/material.dart';

class ChartLabelWidget extends StatelessWidget {
  final String text;
  final Color color;
  const ChartLabelWidget({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
            Container(
                              width: 20,
                              height: 20,
                              color: color,
                            ),
                            Text(text,style: theme.textTheme.bodyMedium,),
      ],
    );
  }
}