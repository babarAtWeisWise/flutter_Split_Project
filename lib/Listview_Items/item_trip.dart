import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_split_project/Views/Details/TripDetailsView.dart';
import 'package:flutter_split_project/Widgets/OutlineButtonWidget.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Extensions/Colors.dart';
import '../Hepler/Constants.dart';
import '../Hepler/colors.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/TextFieldWidget.dart';
import '../Widgets/TopHintTextfieldLabelWidget.dart';
import '../Widgets/CustomDropdown.dart';

class item_trip extends StatefulWidget {
  @override
  State<item_trip> createState() => _item_tripState();
}

class _item_tripState extends State<item_trip> {
  bool status = false;
  late BuildContext dialogContext;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(TripDetailsView.routeName);
      },
      child: Card(
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.w, bottom: 5),
                            child: Text(
                              '29 September 2021  12:42:34',
                              // maxLines: 1,
                              // overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .medium
                                  .copyWith(
                                      fontSize: 12.sp,
                                      color: kPrimaryVarientColor),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'from'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .medium
                                .copyWith(fontSize: 14.sp, color: kHintColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Row(
                            children: [
                              Text(
                                'Gl. Skolevej 8c, 7400...'.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .regular
                                    .copyWith(
                                        fontSize: 14.sp, color: Colors.black),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                'P'.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .regular
                                    .copyWith(
                                        fontSize: 14.sp, color: Colors.black),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                child: FlutterSwitch(
                                  toggleColor: Colors.white,
                                  activeColor: Colors.lightGreenAccent,
                                  inactiveColor: kPrimaryVarientColor,
                                  width: 65.0,
                                  height: 30.0,
                                  valueFontSize: 12.0,
                                  toggleSize: 25.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 4.0,
                                  showOnOff: false,
                                  onToggle: (val) {
                                    status = val;
                                    setState(() {
                                      showCustomDialog(context);
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'B'.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .regular
                                    .copyWith(
                                        fontSize: 14.sp, color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'to'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .medium
                                .copyWith(fontSize: 14.sp, color: kHintColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Gl. Skolevej 8c, 7400...'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .regular
                                .copyWith(fontSize: 14.sp, color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    dialogContext = context;
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            height: 320.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10.0),
                        child: Text(
                          'Select Reason',
                          style: Theme.of(context)
                              .textTheme
                              .semibold
                              .copyWith(fontSize: 20.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: TopHintTextfieldLabelWidget(
                        hint: 'PURPOSE OF TRIP', color: kPrimaryVarientColor),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: _dropdownMenus(30),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: TopHintTextfieldLabelWidget(
                        hint: 'NOTE', color: kPrimaryVarientColor),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: TextFieldWidget(
                      hint: 'Type here...',
                      maxLines: 15,
                      keyboardType: TextInputType.multiline,
                      height: 70.h,
                      padding: 5,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         Expanded(child: OutlineButtonWidget(onPressed: () {
                           Navigator.pop(context, true);
                         },height: 38,title: "Cancel")),
                         SizedBox(width: 20.w),
                         Expanded(child: ButtonWidget(onPressed: () {
                           Navigator.pop(context, true);
                         },height: 38,title: "Confirm"))
                      ],
                    ),
                  )
                ],
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
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

Widget _dropdownMenus(double height) {
  return Column(
    children: [
      CustomDropDown(
        height: height,
        itemList: Constants.sample_list,
        onSelectedValue: (val) => val,
      ),
    ],
  );
}
