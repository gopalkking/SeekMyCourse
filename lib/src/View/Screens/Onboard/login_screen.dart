import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/phone_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xff1D1D1D),
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Image(image: AssetImage(AppImages.logo),fit: BoxFit.fill,
        height: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Log In',style: Theme.of(context).textTheme.titleMedium)),
          24.vspace,
          Text('Phone Number',style: Theme.of(context).textTheme.bodyMedium),
          16.vspace,
          PhoneNumberField(textEditingController: phone, hintText: 'Enter phone number', hintColor: Color(0xff52525B)),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
            ],
          )
          ],
        ),
      ),
    );
  }
}