import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_edit_button.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/personal_info_phone_field.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/personal_info_pinput.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/personal_info_textformfield.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/update_dialog.dart';
import 'package:seek_my_course/src/View/Widget/personal_info_widgets/verify_dialog.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController firstname = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneotp = TextEditingController();
    TextEditingController emailotp = TextEditingController();
    final focusNode = FocusNode();
    return Column(
      children: [
        Container(
          color: Color(AppColors.lightBlack),
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          PersonalInfoTextformfield(
                            textEditingController: firstname,
                          ),
                          24.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Email",
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                             CustomEditButton(onPressed: (){alertBoxEmailEdit(context, email,emailotp,focusNode);})
                            ],
                          ),
                          PersonalInfoTextformfield(
                            textEditingController: firstname,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last Name",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          PersonalInfoTextformfield(
                            textEditingController: lastname,
                          ),
                          24.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Phone",
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                             CustomEditButton(onPressed: () {alertBoxPhoneEdit(context, phone,phoneotp,focusNode);})
                            ],
                          ),
                          PersonalInfoPhoneField(
                            textEditingController: phone,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              24.vspace,
              Text(
                "Date of Birth",
                style: theme.textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 160,
                child: PersonalInfoTextformfield(
                  textEditingController: firstname,
                ),
              ),
              8.vspace
            ],
          ),
        ),
      ],
    );
  }
  alertBoxPhoneEdit(BuildContext context,TextEditingController textEditingController,TextEditingController otpcontroller,FocusNode focusNode) {
    return showDialog(
        context: context,
        builder: (context) {
          return UpdateDialog(
            text1: 'Update Phone Number',
            text2: 'Phone',
            widget: PersonalInfoPhoneField(textEditingController: textEditingController),
            buttoncolor: Theme.of(context).splashColor,
            buttontext: 'Next',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
              alertBoxVerifyPhone(context, otpcontroller, focusNode);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
  alertBoxEmailEdit(BuildContext context,TextEditingController textEditingController,TextEditingController otpcontroller,FocusNode focusNode) {
    return showDialog(
        context: context,
        builder: (context) {
          return UpdateDialog(
            text1: 'Update Email',
            text2: 'Email',
            widget: PersonalInfoTextformfield(textEditingController: textEditingController),
            buttoncolor: Theme.of(context).splashColor,
            buttontext: 'Next',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
              alertBoxVerifyEmail(context, otpcontroller, focusNode);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
  alertBoxVerifyPhone(BuildContext context,TextEditingController textEditingController,FocusNode focusNode) {
    return showDialog(
        context: context,
        builder: (context) {
          return VerifyDialog(
            text1: 'Verify Phone Number',
            text2: 'Enter your OTP code here',
            widget: PersonalInfoPinput(textEditingController: textEditingController, focusNode: focusNode),
            buttoncolor: Theme.of(context).splashColor,
            centerButtontext: "Submit",
            centerButton: (){},
            buttontext: 'Next',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }
  alertBoxVerifyEmail(BuildContext context,TextEditingController textEditingController,FocusNode focusNode) {
    return showDialog(
        context: context,
        builder: (context) {
          return VerifyDialog(
            text1: 'Verify Email',
            text2: 'Enter your OTP code here',
            widget: PersonalInfoPinput(textEditingController: textEditingController, focusNode: focusNode),
            buttoncolor: Theme.of(context).splashColor,
            centerButtontext: "Submit",
            centerButton: (){},
            buttontext: 'Next',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
          );
        });
  }


}
