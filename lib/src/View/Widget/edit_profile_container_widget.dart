import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class EditProfileContainerWidget extends StatelessWidget {
  final String title;
  final String value;
  const EditProfileContainerWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: context.width / 2.4,
      padding: EdgeInsets.all(12),
      color: Color(AppColors.lightBlack),
      child: Column(
        children: [
          Text(value, style: theme.textTheme.titleLarge),
          8.vspace,
          Text(
            title,
            style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
