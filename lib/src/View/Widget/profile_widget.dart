import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';

class ProfileWidget extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final bool? rightArrow;
  const ProfileWidget({super.key, this.onPressed, required this.text, this.rightArrow});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
                      children: [
                        Divider(color: AppColors.appColors.shade200,thickness: 2,height: 6,),
                        InkWell(
                          onTap: onPressed,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(text,style: theme.textTheme.bodyLarge,),
                                if(rightArrow??true==true)
                                Image.asset(AppImages.arrowRight)
                              ],
                            ),
                          ),
                        )
                      ],
                    );
  }
}