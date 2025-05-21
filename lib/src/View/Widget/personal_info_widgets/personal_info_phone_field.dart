import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PersonalInfoPhoneField extends StatelessWidget {
  final TextEditingController textEditingController;
  const PersonalInfoPhoneField({
    super.key,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: textEditingController,
      style: Theme.of(context).textTheme.bodyMedium,
      dropdownIcon: const Icon(Icons.arrow_drop_down, color: Colors.white),
      dropdownIconPosition: IconPosition.trailing,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
        errorStyle: const TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
        ),
        counterStyle: const TextStyle(color: Colors.white, fontSize: 12),
      ),
      initialCountryCode: 'IN',
    );
  }
}
