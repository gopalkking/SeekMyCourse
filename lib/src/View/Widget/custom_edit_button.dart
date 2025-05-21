import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class CustomEditButton extends StatelessWidget {
  final Function() onPressed;
  const CustomEditButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          Icon(Icons.edit, color: Colors.white,size: 16,),
          4.hspace,
          Text(
            "Edit",
            style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
