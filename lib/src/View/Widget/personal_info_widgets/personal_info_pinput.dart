import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PersonalInfoPinput extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  const PersonalInfoPinput({super.key, required this.textEditingController, required this.focusNode});

  @override
  Widget build(BuildContext context) {
      final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 24,
        color:Colors.white,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 2),
      ),
    );
     const focusedBorderColor = Colors.white;
    return Pinput(
                      controller: textEditingController,
                      focusNode: focusNode,
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: Colors.transparent,
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                    onSubmitted: (value){ 
                      // verifyOtp();
                    }, 
                    );
  }
}