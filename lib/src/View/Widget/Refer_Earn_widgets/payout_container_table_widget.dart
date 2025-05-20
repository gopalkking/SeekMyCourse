import 'package:flutter/material.dart';

class PayoutContainerTableWidget extends StatelessWidget {
  final String text;
  final double? height;
  final Border border;
  const PayoutContainerTableWidget({super.key, required this.text, this.height, required this.border});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
          height: height,
          decoration:  BoxDecoration(border: border),
          padding: const EdgeInsets.all(8),
          child: Text(text, style: theme.textTheme.bodySmall, textAlign: TextAlign.center),
        );
  }
}