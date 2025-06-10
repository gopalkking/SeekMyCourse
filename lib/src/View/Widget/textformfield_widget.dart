import 'package:flutter/material.dart';

class CustomTextformWidget extends StatelessWidget {
  final String hintText;
  final Color? color;
  final Color? fillColor;
  final bool? readOnly;
  final Widget? suffixIcon;
  final TextEditingController textEditingController;
  final AutovalidateMode? autovalidateMode;
   final String? Function(String?)? validator;
  const CustomTextformWidget({super.key, required this.hintText, required this.textEditingController, required this.color, this.fillColor, this.validator, this.autovalidateMode, this.readOnly, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: color??Colors.grey.shade800,
        ),
        autovalidateMode: autovalidateMode,
         readOnly: readOnly??false,
         decoration:InputDecoration(
         suffixIcon: suffixIcon,
         filled: true,
        fillColor:fillColor?? Colors.white,
        contentPadding: const EdgeInsets.all(16),
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: color??Colors.grey.shade800,
        ),
        errorStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: Colors.yellow
        )
      ),
      validator: validator,
    );
  }
}


