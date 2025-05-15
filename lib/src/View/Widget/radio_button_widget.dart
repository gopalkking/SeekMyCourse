import 'package:flutter/material.dart';

class RadioButtonWidget extends StatelessWidget {
  final String text;
  final String groupValue;
  final String value;
  final Function(String?) onChanged;

  const RadioButtonWidget({
    super.key,
    required this.text,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: theme.splashColor,
        ),
        Text(
          text,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
