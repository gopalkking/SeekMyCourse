import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';

class CommonAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
    final String text;
    final Function()? onPressed;
    final List<Widget>? action;
  const CommonAppbarWidget({super.key, required this.text, this.onPressed, this.action});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return  AppBar(
        backgroundColor: Color(AppColors.lightBlack),
        leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text(text,style: theme.textTheme.titleSmall,),
        actions: action,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.6),
          child: Container(
             decoration:  BoxDecoration(
                    boxShadow: [BoxShadow(color: Color(AppColors.lightBlack), blurRadius: 1.0)]),
           height: 0.8,
          ),
        ),
      );
  }
     @override
  Size get preferredSize => AppBar().preferredSize;
}