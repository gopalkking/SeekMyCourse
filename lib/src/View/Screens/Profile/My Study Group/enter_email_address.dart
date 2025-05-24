import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_row_text_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_outline_button.dart';
import 'package:seek_my_course/src/View/Widget/onboard_textform_widget.dart';

class EnterEmailAddress extends StatefulWidget {
  const EnterEmailAddress({super.key});

  @override
  State<EnterEmailAddress> createState() => _EnterEmailAddressState();
}

class _EnterEmailAddressState extends State<EnterEmailAddress> {
    final List<TextEditingController> _controllers = [
    TextEditingController(),
  ];
  final int _maxFields = 5;
    @override
  void dispose() {
    // Dispose of controllers when the widget is removed from the tree
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addTextField() {
    // Check if all current text fields are filled
    bool allFieldsFilled =
        _controllers.every((controller) => controller.text.trim().isNotEmpty);

    if (allFieldsFilled && _controllers.length < _maxFields) {
      setState(() {
        _controllers.add(TextEditingController());
      });
    } else {
      // Show a message if a field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Please fill all fields before adding a new one.",style: Theme.of(context).textTheme.bodyMedium,)),
      );
    }
  }

  void _removeTextField() {
    if (_controllers.length > 1) {
      setState(() {
        _controllers.last.dispose(); // Dispose of the last controller
        _controllers.removeLast(); // Remove the last controller from the list
      });
    }
  }

  @override
  Widget build(BuildContext context) {
   ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppbarWidget(text: "Enter email id",onPressed: (){Get.back();},),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Center(child: Text("Create Study Group",style: theme.textTheme.titleLarge,)),
                32.vspace,
                CommonRowTextWidget(title: "Expand Your Knowledge Squad: ", answer: "Add Member Emails"),
              32.vspace,
              Text("“Build your learning community. Enter the email addresses of the people you want to invite to your group.”",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white),textAlign: TextAlign.center),
              32.vspace,
              Text("Enter Email Address",style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              8.vspace,
                        ListView.builder(
                          itemCount: _controllers.length,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                 TextFormWidget(hintText: "", textEditingController: _controllers[index], color:  Colors.grey.shade800, fillColor: Colors.white),
                                 16.vspace,
                              ],
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(onPressed: _controllers.length < _maxFields
                            ? _addTextField
                            : null, child: Text("+ Add More Emails",style: theme.textTheme.bodyMedium,)),
                        ),
                        if (_controllers.length.isEven)
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(onPressed:        _controllers.length > 1 ? _removeTextField : null, child: Text("Remove Emails",style: theme.textTheme.bodyMedium,))),
               SizedBox(height: context.height/14,),
                           Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 CustomOutlineButton(onPressed: (){  Get.back();},text: "Back", width: context.width/3, height: context.height/17, color: Colors.white),
                 CustomButton(onPressed: (){Get.toNamed(Appnames.studyGroupDetails);},text: "Next", width: context.width/3, height: context.height/17, color: theme.splashColor,textcolor: Colors.black,)
                ],
              )
            ],
          ),
        ),
    );
  }
}