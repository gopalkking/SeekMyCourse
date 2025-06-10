import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String imageText;
  final Function() onPressed;
  const SocialMediaButton({super.key, required this.imageText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                        onTap: onPressed,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Image.asset(imageText,height: 30,width: 30,),),
                      );
  }
}