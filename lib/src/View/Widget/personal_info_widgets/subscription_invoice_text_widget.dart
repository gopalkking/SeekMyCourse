import 'package:flutter/material.dart';

class SubscriptionInvoiceTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  const SubscriptionInvoiceTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(text,style: theme.textTheme.bodySmall!.copyWith(color: color??Colors.white),textAlign: TextAlign.center,),
                          );
  }
}