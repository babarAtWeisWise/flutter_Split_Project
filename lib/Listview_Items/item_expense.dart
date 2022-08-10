import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Extensions/Colors.dart';
import '../Hepler/colors.dart';
import '../Views/Details/ExpenseDetailsView.dart';

class item_expense extends StatelessWidget {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(ExpenseDetailsView.routeName);
      },
      child: Card(
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w, bottom: 5),
                        child: Row(
                          children: [
                            Text(
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, bottom: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gl. Skolevej 8c, 7400...'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .regular
                                .copyWith(fontSize: 14.sp, color: Colors.black),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),

                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 80.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: HexColor.fromHex('#F0FFF8'),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Text(
                      'Active',
                      style: Theme.of(context)
                          .textTheme
                          .semibold
                          .copyWith(fontSize: 12.sp, color: HexColor.fromHex('#18AB56')),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
