import 'package:flutter/material.dart';

class PersonalInfoTextformfield extends StatelessWidget {
    final TextEditingController textEditingController;
  final AutovalidateMode? autovalidateMode;
   final String? Function(String?)? validator;
  const PersonalInfoTextformfield({super.key, required this.textEditingController, this.autovalidateMode, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                            controller: textEditingController,
                            style: Theme.of(context).textTheme.bodyMedium,
                            decoration: InputDecoration(
                              isDense: true,
                               contentPadding: EdgeInsets.symmetric(vertical: 10),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ), 
                              ),
                            ),
                            validator: validator,
                            autovalidateMode: autovalidateMode,
                          );
  }
}