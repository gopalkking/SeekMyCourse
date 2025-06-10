import 'package:flutter/material.dart';

class PayoutTextWidget extends StatelessWidget {
  final String text;
  const PayoutTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(text,style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center,),
                          );
  }
}