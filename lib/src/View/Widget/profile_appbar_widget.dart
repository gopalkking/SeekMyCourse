import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';

class ProfileAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? value;
  final ValueChanged<String?> onChanged;
  final List<String> items;
  final String imageText;
  final String text;
  final Function()? notificationonPressed;
   final Function()? backonPressed;
  const ProfileAppbarWidget({super.key, this.value, required this.onChanged, required this.items, required this.imageText, this.notificationonPressed, required this.text, this.backonPressed});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return  CommonAppbarWidget(
        text: "",
        onPressed: backonPressed,
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed:notificationonPressed,
                    ),
                    Positioned(
                      right: 13,
                      top: 14,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.asset(imageText, height: 40, width: 40),
                ),
                8.hspace,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isDense: true,
                        value: items.contains(value) ? value : null,
                        dropdownColor: Colors.black87,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.white70,
                        ),
                        items: items.map((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                        onChanged: onChanged,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  }
     @override
  Size get preferredSize => AppBar().preferredSize;
}