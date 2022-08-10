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

import '../../../Listview_Items/item_overview.dart';
import '../../../Widgets/TopHintTextfieldLabelWidget.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../Hepler/colors.dart';

class TripDetailsView extends StatefulWidget {
  static const String routeName = "/tripdetails";

  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: Text('9 Aug, 2022'.tr,
              style:
              Theme.of(context).textTheme.medium.copyWith(fontSize: 18.sp)),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
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
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('trip_details'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .semibold
                              .copyWith(fontSize: 18.sp)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainLabel(title: "Name"),
                                MainLabel(title: "Date"),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainLabel(title: "Name"),
                                MainLabel(title: "Date"),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )),
                ),

              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MainLabel extends StatelessWidget {
  MainLabel({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .medium
              .copyWith(fontSize: 14.sp,color: kPrimaryVarientColor)),
    );
  }
}

class DescLabel extends StatelessWidget {
  DescLabel({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .medium
              .copyWith(fontSize: 14.sp,color: kPrimaryVarientColor)),
    );
  }
}