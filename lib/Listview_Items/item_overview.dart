import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Extensions/Colors.dart';
import '../Hepler/assets.dart';
import '../Hepler/colors.dart';

class item_overview extends StatelessWidget {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0,top: 12.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.ic_date,
                        width: 20.r,
                        height: 20.r,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('April 2022',
                          style: Theme.of(context)
                              .textTheme
                              .semibold
                              .copyWith(fontSize: 14.sp,color: kPrimaryVarientColor)),

                    ],

                  ),
                ),
              ),
              Container(height: 10, child: Divider(color: Colors.black45)),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 15, right: 15),
                child: Container(
                  height: 15.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text('E: 200km (40%)',
                            style: Theme.of(context)
                                .textTheme
                                .medium
                                .copyWith(fontSize: 14.sp,color: Colors.black)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('P:500km (60%)',
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
                  height: 15.h,
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

            ],
          )),
    );
  }
}
