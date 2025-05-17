import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Screens/Generate%20Course/subtopic_drawer.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/common_appbar_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GenerateCourseShow extends StatefulWidget {
  const GenerateCourseShow({super.key});

  @override
  State<GenerateCourseShow> createState() => _GenerateCourseShowState();
}

class _GenerateCourseShowState extends State<GenerateCourseShow> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    
    ThemeData theme = Theme.of(context);
    
    return Scaffold(
      key: _scaffoldKey,
       appBar: CommonAppbarWidget(text: "Generate Course",onPressed: (){Get.back();},action: [
        InkWell(onTap: (){
                _scaffoldKey.currentState?.openEndDrawer();
          },child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Icon(Icons.menu,color: Colors.white,),
            Text("View Subtopics ",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white,fontSize: 10),)
          ],),)
       ],),
      endDrawer: SubtopicDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Course Topic Name",style: theme.textTheme.titleLarge,),
            16.vspace,
            Text("Chapter Name",style: theme.textTheme.bodySmall!.copyWith(color: Colors.white)),
            8.vspace,
            YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: "9iDXWx7GtZQ", 
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
          ),
        ),
        showVideoProgressIndicator: true,
            ),
            32.vspace,
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letra set sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumame Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letra set sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumame",style: theme.textTheme.bodyMedium,)
          ],
        ),
      ),
      floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                Get.toNamed(Appnames.aiNotesScreen);
              },
              shape: CircleBorder(),
              backgroundColor: theme.splashColor,
              child: Image.asset(AppImages.notepad),
            ),
            8.vspace,
            FloatingActionButton(
              onPressed: () {
                Get.toNamed(Appnames.aiChatScreen);
              },
              shape: CircleBorder(),
              backgroundColor: theme.splashColor,
              child: Image.asset(AppImages.aichat),
              
            ),
          ],
        ),
    );
  }
}