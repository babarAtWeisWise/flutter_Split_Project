import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_split_project/Extensions/internacionalization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Extensions/Colors.dart';
import '../Hepler/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      HexColor.fromHex('#00B5EF'),
                      HexColor.fromHex('#01A2D4')
                    ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      padding: EdgeInsets.all(2.0),
                      alignment: Alignment.topLeft),
                  onPressed: () {},
                  child: const Text(
                    'View Profile',
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              Assets.ic_settings,
            ),
            title: Text(
              'settings'.tr,
              style: Theme.of(context)
                  .textTheme
                  .regular
                  .copyWith(fontSize: 16.sp),
            ),
            trailing: SvgPicture.asset(Assets.ic_forward_arrow),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              Assets.ic_faq,
            ),
            title: Text(
              'faq'.tr,
              style: Theme.of(context)
                  .textTheme
                  .regular
                  .copyWith(fontSize: 16.sp),
            ),
            trailing: SvgPicture.asset(Assets.ic_forward_arrow),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              Assets.ic_logout,
            ),
            title: Text(
              'logout'.tr,
              style: Theme.of(context)
                  .textTheme
                  .regular
                  .copyWith(fontSize: 16.sp),
            ),
            trailing: SvgPicture.asset(Assets.ic_forward_arrow),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
