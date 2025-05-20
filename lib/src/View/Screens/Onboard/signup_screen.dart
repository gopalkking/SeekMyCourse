import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/phone_field_widget.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController dob = TextEditingController();

  DateTime selectedDate = DateTime.now();
  String? setDate = "DD-MM-YYYY";
  String? dateTime;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1960),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
         dob.text = DateFormat.yMd().format(selectedDate);
      });
    }
  }
  bool showvalue = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme =  Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff1D1D1D),
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Image(image: AssetImage(AppImages.logo),fit: BoxFit.fill,
        height: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: Text('Sign Up!',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold
              ))),
              16.vspace,
               Row(
                      children: [
                        Text(
                          'First Name',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        Text(
                          ' *',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                    8.vspace,
                    TextFormWidget(
                        hintText: 'e.g John',
                        color: Color(0xff52525B),
                        fillColor: Colors.transparent,
                        textEditingController: firstname,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value){
                          if (value!.isEmpty) {
                            return 'Please Required Lastname';
                          } else if (RegExp(
                                  r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+ [A-Za-z]+\.?\s*$")
                              .hasMatch(value)) {
                            return 'Enter Correct Lastname';
                          } else {
                            return null;
                          }
                        },),
                    16.vspace,
                    Row(
                      children: [
                        Text(
                          'Last Name',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        Text(
                          ' *',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                    8.vspace,
                    TextFormWidget(
                        hintText: 'e.g Doe',
                         color: Color(0xff52525B),
                        fillColor: Colors.transparent,
                        textEditingController: lastname,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value){
                          if (value!.isEmpty) {
                            return 'Please Required Lastname';
                          } else if (RegExp(
                                  r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+ [A-Za-z]+\.?\s*$")
                              .hasMatch(value)) {
                            return 'Enter Correct Lastname';
                          } else {
                            return null;
                          }
                        },),
                    16.vspace,
                    Row(
                      children: [
                        Text(
                          'Email',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        Text(
                          ' *',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                    8.vspace,
                    TextFormWidget(
                        hintText: 'example@gmail.com',
                        color: Color(0xff52525B),
                        fillColor: Colors.transparent,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textEditingController: email,
                        validator: (value){
                          if (value!.isEmpty) {
                          return 'Please Required Email';
                        } else if (!RegExp(
                                r'^[\w#][\w\.\’+#](.[\w\\’#]+)\@[a-zA-Z0-9]+(.[a-zA-Z0-9]+)*(.[a-zA-Z]{2,20})$')
                            .hasMatch(value)) {
                          return 'Enter correct EmailID';
                        } else {
                          return null;
                        }
                        },),
                    16.vspace,
                    Row(
                      children: [
                        Text(
                          'Phone Number',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        Text(
                          ' *',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                    8.vspace,
                     PhoneNumberField(textEditingController: phone, hintText: 'Enter phone number', hintColor: Color(0xff52525B)),
                    16.vspace,
                    Row(
                      children: [
                        Text(
                          'Date of Birth',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        Text(
                          ' *',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                    8.vspace,
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: dob,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.grey.shade800
                      ),
                      decoration: InputDecoration(
                        
                        hintText: 'DD/MM/YYYY',
                        hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Color(0xff52525B),
                            ),
                        filled: true,
                        suffixIcon: IconButton(onPressed: (){
                          selectDate(context);
                        },icon: Icon(Icons.calendar_month,color: Colors.grey.shade800,)),
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 12,left: 8),
                        border: InputBorder.none,
                      ),
                    ),
                   
                    24.vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          alignment: Alignment.center, // Alignment as center
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFF09869),
                                Color(0xFFC729B2),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                showvalue = !showvalue;
                              });
                            },
                            child: showvalue
                                ? const Icon(Icons.check_rounded, color: Colors.white)
                                : Padding(
                                    padding: const EdgeInsets.all(2.5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                          ),
                        ),
                        8.hspace,
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Row(
                              children: [
                                Text(
                                  'I agree to the',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(color: Colors.white, fontSize: 16),
                                ),
                                InkWell(
                                  onTap: (){
                                    // Get.toNamed(Appnames.termsofservice);
                                  },
                                  child: Text(
                                    ' Terms of Service',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            // color: const Color(0xff4C07F4),
                                            color: const Color(0xff10d6cd),
                                            fontSize: 16),
                                  ),
                                ),
                                Text(
                                  '  & ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: InkWell(
                        onTap: (){
                          // Get.toNamed(Appnames.privacypolice);
                        },
                        child: Text(
                          'Privacy Policy',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                              //color: const Color(0xff4C07F4),
                              color: const Color(0xff10d6cd),
                              fontSize: 16),
                        ),
                      ),
                    ),
                24.vspace,
                CustomButton(text: 'Continue', width: MediaQuery.of(context).size.width, height: 50, 
                color: theme.splashColor,textcolor: Colors.black,onPressed: (){
                  Get.toNamed(Appnames.signupOtp);
                },),
                16.vspace,
            ],
          ),
        ),
      ),
    );
  }
}