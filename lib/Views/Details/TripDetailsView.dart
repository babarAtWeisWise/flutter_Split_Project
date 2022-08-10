import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:get/get.dart';
import 'package:google_maps_widget/google_maps_widget.dart';
import '../../../Extensions/Colors.dart';
import '../../../Hepler/assets.dart';
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
            child: SingleChildScrollView (child: Column(
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
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainLabel(title: "Type of trip:"),
                                MainLabel(title: "Distance"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DescLabel(title: "Private"),
                                DescLabel(title: "1.40km"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainLabel(title: "Date"),
                                MainLabel(title: "Start Time"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DescLabel(title: "30-11-2022"),
                                DescLabel(title: "15:49:08"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainLabel(title: "End Time:"),
                                MainLabel(title: "Odometer Start"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DescLabel(title: "15:53:12"),
                                DescLabel(title: "0.00"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MainLabel(title: "Odometer Finish:"),
                                MainLabel(title: "Notes & Names"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DescLabel(title: "0.00"),
                                DescLabel(title: "Kasper"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                MainLabel(title: "Start Address:"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              children: [
                                DescLabel(title: "Gl. Skolevej 8c, 7400 Herning, Denmark"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                MainLabel(title: "End Address:"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              children: [
                                DescLabel(title: "H.C. Ørsteds Vej 21b, 7400 Herning, Denmark"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                MainLabel(title: "Start Coordinate:"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              children: [
                                DescLabel(title: "56.136689 , 8.964767"),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                MainLabel(title: "Destination Coordinate:"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              children: [
                                DescLabel(title: "56.1408 , 8.978314"),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            )
                          ],
                        ),
                      )),
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
                        child: Container(
                          height: 250.h,
                          child: GoogleMapsWidget(
                            apiKey: "AIzaSyCV5xc1gwHXevjX1MX1aZztBo-lKUmshfk",
                            sourceLatLng: LatLng(40.484000837597925, -3.369978368282318),
                            destinationLatLng: LatLng(40.48017307700204, -3.3618026599287987),
                            routeWidth: 6,
                            routeColor: Colors.red,
                            showPolyline: true,
                            sourceMarkerIconInfo: MarkerIconInfo(
                              assetPath: Assets.small_logo,
                            ),
                            destinationMarkerIconInfo: MarkerIconInfo(
                              assetPath: Assets.small_logo,
                            ),
                            updatePolylinesOnDriverLocUpdate: true,


                            /// and a lot more...
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
            )
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
              .regular
              .copyWith(fontSize: 14.sp)),
    );
  }
}