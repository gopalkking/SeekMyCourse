import 'package:flutter/material.dart';
import 'package:seek_my_course/src/View/Screens/Profile/profile_screen.dart';
import 'package:seek_my_course/src/View/Screens/generate_course.dart';
import 'package:seek_my_course/src/View/Screens/home_screen.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';


// ignore: must_be_immutable
class NavigatorScreen extends StatefulWidget {
   int index;
   NavigatorScreen({super.key, required this.index});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
        height: MediaQuery.of(context).size.height,
            // padding:const EdgeInsets.all(8),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child:widget.index == 0 ? const HomeScreen() : widget.index == 1 ? const GenerateCourse() :widget.index == 2 ? const ProfileScreen() :const  HomeScreen()),
             // 8.vspace,
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.55),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                               widget.index = 0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(child: Image.asset(AppImages.home,
                                //color: Colors.white,
                                color: widget.index == 0 ? theme.splashColor:Colors.white,
                                height: 45,
                                width: 45,)),//36
                                Text('Home',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  //color: Colors.white,
                                color:widget.index == 0 ? theme.splashColor : Colors.white,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                               widget.index = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                 Image.asset(AppImages.learning,
                                // color: Colors.white,
                                 color:widget.index == 1 ?theme.splashColor :Colors.white,
                                 height: 45,//36
                                 width: 45,),//36
                                 Text('Generate Course',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                  //color:Colors.white,
                                     color:widget.index == 1? theme.splashColor: Colors.white,
                                      fontSize: 18,
                                    ),
                                  
                              ),
                              ],
                            ),
                          ),
                           InkWell(
                            onTap: (){
                              setState(() {
                               widget.index = 2;
                              });
                            },
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Image.asset(AppImages.profile,
                                // color: Colors.white,
                                 color: widget.index == 2 ?theme.splashColor:Colors.white,
                                 height: 45,
                                 width: 45,),//36
                                 Text('Profile',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  //color: Colors.white,
                                      color:widget.index == 2? theme.splashColor: Colors.white,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                    ),
                              ],
                            ),
                           ),                           
                        ],
                      ),
                    )
            ],
          ),
        ),
    );
  }
}