import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';

class SignOTPScreen extends StatefulWidget {
  const SignOTPScreen({super.key});

  @override
  State<SignOTPScreen> createState() => _SignOTPScreenState();
}

class _SignOTPScreenState extends State<SignOTPScreen> {
   final  pinputController = TextEditingController();
   final focusNode = FocusNode();
   
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
    return Scaffold(
      appBar: AppBar(
             backgroundColor: Color(0xff1D1D1D),
             centerTitle: true,
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title:Text('Email verification',style: Theme.of(context).textTheme.titleMedium,)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            24.vspace,
             Text('Please enter the code we sent to j*****t@gmail.com',style: Theme.of(context).textTheme.bodyMedium),
             16.vspace,
             Pinput(
                      controller: pinputController,
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
                    ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              CustomButton(text: 'Submit', width: MediaQuery.of(context).size.width, 
              height: 50, color: theme.splashColor,onPressed: (){
                Get.toNamed(Appnames.subscription);
              },textcolor: Color(0xff000000),),
              36.vspace,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t receive OTP?',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white
                ),),
                8.hspace,
                Text('RESEND -',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Color(0xff0AD1BD)
                ),),
                8.hspace,
                Text('00 : 56',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white
                ),),  

              ],
             )
          ],
        ),
      ),
    );
  }
}