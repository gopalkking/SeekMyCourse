import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class HomeScreenContainerWidget extends StatelessWidget {
  final String title;
  final String value;
  final String imageText;
  const HomeScreenContainerWidget({super.key, required this.title, required this.value, required this.imageText});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return   Container(
                      width: context.width / 2.2,
                      padding: EdgeInsets.all(16),
                      color: Color(AppColors.lightBlack),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(imageText),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              8.vspace,
                              Text(value, style: theme.textTheme.titleLarge),
                            ],
                          ),
                        ],
                      ),
                    );
  }
}