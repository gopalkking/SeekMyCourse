import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seek_my_course/src/Model/chart_data.dart';
import 'package:seek_my_course/src/View/Routes/route_name.dart';
import 'package:seek_my_course/src/View/Utilies/colors.dart';
import 'package:seek_my_course/src/View/Utilies/images.dart';
import 'package:seek_my_course/src/View/Utilies/sizedbox_widget.dart';
import 'package:seek_my_course/src/View/Widget/chart_label_widget.dart';
import 'package:seek_my_course/src/View/Widget/custom_button.dart';
import 'package:seek_my_course/src/View/Widget/filter_helper.dart';
import 'package:seek_my_course/src/View/Widget/home_screen_container_widget.dart';
import 'package:seek_my_course/src/View/Widget/home_widgets/home_row_text.dart';
import 'package:seek_my_course/src/View/Widget/profile_appbar_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedLanguage = 'English';
  final List<String> _languages = ['English', 'Tamil', 'Hindi'];
  List<String> menuItems = [
    'This Month',
    'Last Month',
    'Last 3 Month',
    'Last 6 Months',
  ];

  final List<SecondChartData> data = [
    SecondChartData('Jan', 35),
    SecondChartData('Feb', 28),
    SecondChartData('Mar', 48),
    SecondChartData('Apr', 58),
    SecondChartData('May', 70),
    SecondChartData('Jun', 92),
    SecondChartData('Jul', 66),
    SecondChartData('Aug', 42),
    SecondChartData('Sep', 34),
    SecondChartData('Oct', 48),
    SecondChartData('Nov', 26),
    SecondChartData('Dec', 32),
  ];
  final GlobalKey _filterKey = GlobalKey();
  final GlobalKey _filterKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final List<ChartData> chartData = [
      ChartData('Image Courses', 38, theme.splashColor),
      ChartData('Video Courses', 25, Colors.white),
    ];
    return Scaffold(
      appBar: ProfileAppbarWidget(
        notificationonPressed: () {
          Get.toNamed(Appnames.notification);
        },
        backonPressed: () {},
        text: "Vishnu",
        onChanged: (value) {
          setState(() {
            _selectedLanguage = value!;
          });
        },
        items: _languages,
        value: _selectedLanguage,
        imageText: AppImages.photo,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(AppColors.lightBlack),
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Subscription : ",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.splashColor,
                        ),
                      ),
                      Text("Basic", style: theme.textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Courses : ",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.splashColor,
                        ),
                      ),
                      Text("10/15", style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ],
              ),
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Course OverView",
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text("This Month", style: theme.textTheme.bodyMedium),
                    8.hspace,
                    InkWell(
                      key: _filterKey2,
                      onTap: () {
                        showFilterMenu(
                          context: context,
                          key: _filterKey2,
                          items:
                              menuItems
                                  .map(
                                    (item) => buildPopMenuItem(item, context),
                                  )
                                  .toList(),
                        );
                      },
                      child: Image.asset(
                        AppImages.filter,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    HomeScreenContainerWidget(
                      title: "Total \nCourses",
                      value: "10/5",
                      imageText: AppImages.totalCourses,
                    ),
                    8.vspace,
                    HomeScreenContainerWidget(
                      title: "Completed \nCourses",
                      value: "10",
                      imageText: AppImages.completedCourses,
                    ),
                  ],
                ),
                Column(
                  children: [
                    HomeScreenContainerWidget(
                      title: "Active \nCourses",
                      value: "10/5",
                      imageText: AppImages.activeCourses,
                    ),
                    8.vspace,
                    HomeScreenContainerWidget(
                      title: "Exported \nCourses",
                      value: "10/5",
                      imageText: AppImages.exportedCourses,
                    ),
                  ],
                ),
              ],
            ),
            8.vspace,
            Container(
              color: Color(AppColors.lightBlack),
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  SizedBox(
                    height: context.height / 3.5,
                    child: SfCircularChart(
                      margin: EdgeInsets.zero,
                      annotations: [
                        CircularChartAnnotation(
                          widget: Text(
                            "Course Type",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          radius: '70%',
                          innerRadius: '75%',
                          dataLabelSettings: DataLabelSettings(
                            isVisible: true,
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ChartLabelWidget(
                        text: " Video Courses",
                        color: Colors.white,
                      ),
                      ChartLabelWidget(
                        text: " Image Courses",
                        color: theme.splashColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Referral Revenue",
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text("This Month", style: theme.textTheme.bodyMedium),
                    8.hspace,
                        InkWell(
                          key: _filterKey,
                          onTap: () {
                             showFilterMenu(
                          context: context,
                          key: _filterKey,
                          items:
                              menuItems
                                  .map(
                                    (item) => buildPopMenuItem(item, context),
                                  )
                                  .toList(),
                        );
                          },
                          child: Image.asset(
                            AppImages.filter,
                            height: 25,
                            width: 25,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            16.vspace,
            Container(
              color: Color(AppColors.lightBlack),
              padding: const EdgeInsets.all(16),
              child: SfCartesianChart(
                backgroundColor: Colors.transparent,
                plotAreaBorderWidth: 0,
                primaryXAxis: CategoryAxis(
                  majorGridLines: const MajorGridLines(width: 0),
                  axisLine: AxisLine(color: Colors.white),
                  majorTickLines: MajorTickLines(size: 0),
                  labelStyle: const TextStyle(color: Colors.white),
                ),
                primaryYAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  labelStyle: const TextStyle(color: Colors.white),
                  axisLine: AxisLine(color: Colors.white),
                  majorTickLines: MajorTickLines(size: 0),
                  majorGridLines: const MajorGridLines(width: 0),
                ),
                series: <CartesianSeries<SecondChartData, String>>[
                  ColumnSeries<SecondChartData, String>(
                    dataSource: data,
                    xValueMapper: (SecondChartData sales, _) => sales.month,
                    yValueMapper: (SecondChartData sales, _) => sales.value,
                    color: theme.splashColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
            ),
            16.vspace,
              Text("Recent Courses",style: theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),),
            8.vspace,
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.appColors.shade200,width: 2)),color: Color(AppColors.lightBlack)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 130,width: 120,child: Image.asset(AppImages.course,fit: BoxFit.fill,)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("CCNA Security For Starters", style: theme.textTheme.bodySmall!.copyWith(color: Colors.white)),
                              HomeRowText(title: "Type: ", answer: "Video  & Theory Course"),
                              HomeRowText(title: "No of Subtopics: ", answer: "05"),
                              HomeRowText(title: "Language: ", answer: "English"),
                              HomeRowText(title: "Date: ", answer: "12 -Mar - 2025"),
                              4.vspace,
                              CustomButton(onPressed: (){},text: "Continue", width: context.width/3, height: 29, color: theme.splashColor,textcolor: Colors.black,textsize: 12),
                            ],
                          )
                        ],
                      ),                ],
                  ),
                );
              }
            ),
              8.vspace,
              Text("Recent Active Study Groups",style: theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold,),),
            8.vspace,
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.appColors.shade200,width: 2)),color: Color(AppColors.lightBlack)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey                        ),
                        child: ClipOval(child: Image.asset(AppImages.photo,height: 80,width: 80,fit: BoxFit.cover,)),
                      ),
                      16.hspace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("Group Name", style: theme.textTheme.bodySmall!.copyWith(color: Colors.white)),
                               4.vspace,
                               Text("No of Learners: 10", style: theme.textTheme.bodySmall!.copyWith(color: theme.splashColor)),
                            ],
                          )
                        ],
                      ),                ],
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> buildPopMenuItem(String text, BuildContext context) {
    final theme = Theme.of(context);
    return PopupMenuItem<String>(
      value: text,
      child: Text(
        text,
        style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
      ),
    );
  }
}
