import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/custom_edit_button.dart';
import 'package:seek_my_course/src/View/Widget/textformfield_widget.dart';

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
    TextEditingController facebook = TextEditingController();
    TextEditingController instagram = TextEditingController();
    TextEditingController x = TextEditingController();
    TextEditingController linkedin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
       Container(
        color: Color(AppColors.lightBlack),
         padding: EdgeInsets.all(18),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomEditButton(onPressed: (){}),
              ],
            ),
            8.vspace,
              RichText(text: TextSpan(
                  text: 'Lorem Ipsum',
                  style: theme.textTheme.bodySmall!.copyWith(color: theme.splashColor,),
                  children: [
                    TextSpan(
                      text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letterset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,),
                    )
                  ]
            )),
            8.vspace,
             Divider(color: AppColors.appColors.shade200,thickness: 2,height: 6,),
            16.vspace,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Social Links",style:theme.textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                ),),
                CustomEditButton(onPressed: (){})
              ],
             ),
             16.vspace,
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
                            "Facebook",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          8.vspace,
                         CustomTextformWidget(
                            hintText: "",
                            color: Colors.white,
                            textEditingController: facebook,
                          ),
                          24.vspace,
                          Text(
                            "Instagram",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                         8.vspace,
                          CustomTextformWidget(
                            hintText: "",
                            color: Colors.white,
                            textEditingController: instagram,
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
                            "X",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        8.vspace,
                         CustomTextformWidget(
                            hintText: "",
                            color: Colors.white,
                            textEditingController: instagram,
                          ),
                          24.vspace,
                          Text(
                            "LinkedIn",
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          8.vspace,
                           CustomTextformWidget(
                            hintText: "",
                            color: Colors.white,
                            textEditingController: linkedin,
                                                       ),
                        
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            
          ],
         ),
       ),
       32.vspace,
         CustomButton(text: "Save", width: MediaQuery.of(context).size.width/3.7, height: 45, color: theme.splashColor,textcolor: Colors.black,onPressed:(){},textsize: 14,),
       32.vspace,
      ],
    );
  }
}