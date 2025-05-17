import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidgets extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  final String text2;
  final PageController pageController;
  final Function()? onTap;
  final Function()? onpressed;
  const OnboardingWidgets({super.key, required this.image, required this.text, required this.text1, required this.text2, required this.pageController, this.onTap, this.onpressed});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            24.vspace,
            Image.asset(AppImages.logo,fit: BoxFit.fill,
            height: 36,width: MediaQuery.of(context).size.width/ 1.5,),
            16.vspace,
           Image.asset(image.toString(),fit: BoxFit.fill,),
           16.vspace,
           Text(text,style: Theme.of(context).textTheme.displayMedium),
           12.vspace,
          Text(text1,style: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: theme.splashColor
          ),textAlign: TextAlign.center,
          ),
          16.vspace,
           Text(text2,style: Theme.of(context).textTheme.bodyMedium,
           textAlign: TextAlign.center,),
           24.vspace,
           SmoothPageIndicator(
                        controller: pageController, count: 3,
                        effect: const WormEffect(
                          spacing: 16,
                          dotColor: Color(0xffD9D9D9),
                          activeDotColor: Color(0xff02DCCB)
                        ),),
          24.vspace,
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.splashColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              onPressed: onpressed,
             child: Text('Next',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.black,
             ),)),
          ),
          16.vspace,
          InkWell(
            onTap: onTap,
            child: Text('Skip',style: Theme.of(context).textTheme.bodyLarge,))
          ],
        ),
      ),
    );
  }
}