import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';

class PaginationWidget extends StatelessWidget {
  final int? value;
  final ValueChanged<int?> onChanged;
  final List<int> items;
  final String perPage;
  final Function()? leftOnPressed;
  final Function()? rightOnPressed;
  const PaginationWidget({super.key, required this.perPage, this.leftOnPressed, this.rightOnPressed, this.value, required this.onChanged, required this.items});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return   Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text("Items per page",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),),
              8.hspace,
             Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: DropdownButton<int>(
              value: value ?? items.first,
              dropdownColor: Colors.black,
              iconEnabledColor: Colors.white,
              underline: SizedBox(),
              style: TextStyle(color: Colors.white),
              items: items.map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
              onChanged:onChanged,
            ),
          ),
          8.vspace,
            Text(
            perPage,
            style: TextStyle(color: Colors.white),
          ),
          InkWell(onTap: leftOnPressed,child: Icon(Icons.chevron_left, color: Colors.white),),
          InkWell(onTap: rightOnPressed,child: Icon(Icons.chevron_right, color: Colors.white),),
            ],);
  }
}