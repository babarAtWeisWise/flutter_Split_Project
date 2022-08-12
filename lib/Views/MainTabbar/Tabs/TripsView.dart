import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_split_project/Listview_Items/item_trip.dart';
import 'package:flutter_split_project/Widgets/custom_drawer.dart';
import 'package:get/get.dart';
import '../../../Extensions/Colors.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../../Hepler/colors.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../Notifications/notification_view.dart';

class TripsView extends StatefulWidget {
  static const String routeName = "/trips";

  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<TripsView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
          title: Text('Trips',
              style:
                  Theme.of(context).textTheme.medium.copyWith(fontSize: 18.sp)),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu_outlined,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(NotificationView.routeName);
                },
                icon: Icon(
                  Icons.notification_important_rounded,
                  color: Colors.black,
                )),
          ]),
      drawer: CustomDrawer(),
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
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.navigate_before,
                                      color: Colors.black,
                                    )),
                                Text('April 2022',
                                    style: Theme.of(context)
                                        .textTheme
                                        .semibold
                                        .copyWith(fontSize: 18.sp)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: Colors.black,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 30.h,
                            alignment: Alignment.center,
                            color: kPrimaryVarientColor,
                            child: Text('your_split'.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .semibold
                                    .copyWith(fontSize: 18.sp,color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:15,left: 15, right: 15),
                            child: Container(
                              height: 30.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('private'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .medium
                                      .copyWith(fontSize: 14.sp,color: kPrimaryVarientColor)),
                                  Text('business'.tr,
                                      style: Theme.of(context)
                                          .textTheme
                                          .medium
                                          .copyWith(fontSize: 14.sp,color: kPrimaryVarientColor)),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              height: 15.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width:50.w,
                                    child: Text('70%',
                                        style: Theme.of(context)
                                            .textTheme
                                            .medium
                                            .copyWith(fontSize: 14.sp,color: Colors.black)),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width:50.w,
                                    child: Text('30%',
                                        style: Theme.of(context)
                                            .textTheme
                                            .medium
                                            .copyWith(fontSize: 14.sp,color: Colors.black)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 5.h),
                              height: 20.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(10.h)),
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  valueColor: AlwaysStoppedAnimation<Color>(kPrimaryVarientColor),
                                  backgroundColor: Colors.lightGreenAccent,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),

                        ],
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: Container(
                    child: ListView.separated(
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
                        }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 5.h);
                    },),
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

  void showCustomDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            height: 240,
            child: SizedBox.expand(child: FlutterLogo()),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }
}
