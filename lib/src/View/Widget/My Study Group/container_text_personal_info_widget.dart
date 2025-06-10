import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';

class ContainerTextPersonalInfoWidget extends StatelessWidget {
  final String text;
  const ContainerTextPersonalInfoWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return  Container(
                    color: AppColors.appColors.shade50,
                    width: context.width/4,
                    height: 30,
                    child:Center(child: Text(text,style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,)) ,);
  }
}