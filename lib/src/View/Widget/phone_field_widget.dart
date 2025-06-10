
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final Color hintColor;
  const PhoneNumberField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.hintColor});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Color(0xff52525B),
      ),
    
     dropdownTextStyle: TextStyle(
      fontSize: 18,
      color: Color(0xff52525B)
     ),
      textAlign: TextAlign.center,
      controller: textEditingController,
      dropdownIcon: const Icon(Icons.arrow_drop_down,color: Color(0xff52525B),size: 30,),
      dropdownIconPosition: IconPosition.trailing,
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.only(top: 12,),
        // border:const OutlineInputBorder(
        //   gapPadding: 0.0,
        //   borderRadius: BorderRadius.all(Radius.circular(8))
        // ),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: hintColor,),
         errorStyle: const TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
        counterStyle:const TextStyle(
              color: Color(0xff52525B), 
              fontSize: 12,
            ),
    
      ),
      initialCountryCode: 'IN',
      
      onChanged: (phone) {
        
      },
      validator: (value) {
        if (value == null) {
          return 'Please enter a phone number';
        } else if (!value.isValidNumber()) {
          return 'Please enter a valid phone number';
        } else {
          return null;
        }
      },
    );
  }
}
