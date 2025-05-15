import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChanged;
  final List<String> items;
  final String?labeltext;
  final Color? labelColor;
  final Color? borderColor;
  final Color? dropdownColor;
  final double? borderRadius;
  const CustomDropdown(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.items,this.labeltext, this.labelColor, this.borderColor, this.borderRadius, this.dropdownColor});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DropdownButtonFormField<String>(
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: labelColor??theme.splashColor),
      hint: Text(labeltext!,style:Theme.of(context).textTheme.bodyLarge!.copyWith(color: labelColor??theme.splashColor),),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??4.0),
            borderSide: BorderSide(color: borderColor??theme.splashColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??4.0),
            borderSide: BorderSide(color: borderColor??theme.splashColor, )),
            contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12), 
        isDense: true,
      ),
      isExpanded: true,
      iconSize: 26,
      icon:  Icon(
        Icons.keyboard_arrow_down_outlined,
        color: labelColor??theme.splashColor,
      ),
      value:items.contains(value) ? value : null,
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value ,
          child: Text(
            value,
          ),
        );
      }).toList(),
      onChanged: onChanged,
      dropdownColor: dropdownColor??  Colors.white,
    );
  }
}
