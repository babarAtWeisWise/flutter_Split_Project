import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Hepler/colors.dart';

class item_trip extends StatefulWidget {
  @override
  State<item_trip> createState() => _item_tripState();
}

class _item_tripState extends State<item_trip> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                                .copyWith(
                                    fontSize: 14.sp, color: kHintColor),
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
                                .copyWith(
                                    fontSize: 14.sp, color: kHintColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Gl. Skolevej 8c, 7400...'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .regular
                                .copyWith(
                                    fontSize: 14.sp, color: Colors.black),
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
}
