import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

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
        Container(
          height: 21,
          width: 21,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(color: theme.splashColor,width: 1)),
          child: Radio<String>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: theme.splashColor,
            fillColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return theme.splashColor;
                }
                if (states.contains(WidgetState.disabled)) {
                  return Colors.white;
                }
                return Colors.white;
              },
              
              ),
          ),
        ),
        16.hspace,
        Text(
          text,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
