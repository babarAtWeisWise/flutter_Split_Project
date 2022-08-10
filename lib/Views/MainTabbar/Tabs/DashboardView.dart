import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_split_project/Listview_Items/item_trip.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Extensions/Colors.dart';
import '../../../Hepler/assets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../Widgets/TopHintTextfieldLabelWidget.dart';
import '../../../Widgets/custom_appbar.dart';

class DashboardView extends StatefulWidget {
  static const String routeName = "/dashboard";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: Text('License Plate #3432',
              style:
                  Theme.of(context).textTheme.medium.copyWith(fontSize: 18.sp)),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_important_rounded,
                  color: Colors.black,
                )),
          ]),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    HexColor.fromHex('#00B5EF'),
                    HexColor.fromHex('#01A2D4')
                  ])),
              child: DrawerHeader(
                child: Container(
                    color: Colors.red,
                    child: Column(
                  children: [
                    Text('Kasper Weis',
                        style: Theme.of(context)
                            .textTheme
                            .medium
                            .copyWith(fontSize: 18.sp, color: Colors.white)),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: Theme.of(context)
                            .textTheme
                            .regular
                            .copyWith(fontSize: 13.sp),
                      ),
                      onPressed: () {},
                      child: const Text('View Profile'),
                    )
                  ],
                )),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                HexColor.fromHex('#FFFFFF'),
                HexColor.fromHex('#EFF1F5')
              ],
            )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 5),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('current_month'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .semibold
                                        .copyWith(fontSize: 18.sp)),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: PieChart(
                                        dataMap: {"Private": 5, "Business": 3},
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 32,
                                        chartRadius: 500 / 3.2,
                                        colorList: [
                                          const Color(0xff00B5EF),
                                          const Color(0xff63C556)
                                        ],
                                        centerText: "June",
                                        initialAngleInDegree: 0,
                                        chartType: ChartType.ring,
                                        ringStrokeWidth: 40,
                                        legendOptions: LegendOptions(
                                          showLegendsInRow: false,
                                          legendPosition: LegendPosition.right,
                                          showLegends: false,
                                        ),
                                        chartValuesOptions: ChartValuesOptions(
                                          showChartValueBackground: true,
                                          showChartValues: true,
                                          showChartValuesInPercentage: true,
                                          showChartValuesOutside: true,
                                          decimalPlaces: 1,
                                        ),
                                        // gradientList: ---To add gradient colors---
                                        // emptyColorGradient: ---Empty Color gradient---
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 170,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(
                                            color: Colors.black26, width: 0.8)),
                                    elevation: 1,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 10.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            Assets.point_private,
                                            width: 10.r,
                                            height: 10.r,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            child: Text('private'.tr,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .regular
                                                    .copyWith(fontSize: 14.sp)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: SizedBox(
                                              width: 5.0,
                                              height: 20.0,
                                              child: VerticalDivider(
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ),
                                          Text('25',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .medium
                                                  .copyWith(fontSize: 14.sp)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(
                                            color: Colors.black26, width: 0.8)),
                                    elevation: 1,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 10.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            Assets.point_business,
                                            width: 10.r,
                                            height: 10.r,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            child: Text('business'.tr,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .regular
                                                    .copyWith(fontSize: 14.sp)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: SizedBox(
                                              width: 5.0,
                                              height: 20.0,
                                              child: VerticalDivider(
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ),
                                          Text('25',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .medium
                                                  .copyWith(fontSize: 14.sp)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('trip_history'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .semibold
                              .copyWith(fontSize: 18.sp)),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        padding: EdgeInsets.all(15),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                              child: AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 500),
                            child: SlideAnimation(
                              verticalOffset: 100.0,
                              duration: Duration(milliseconds: 500),
                              child: Container(
                                height: 100.h,
                                child: item_trip(),
                              ),
                            ),
                          ));
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
