import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Views/Login/LoginView.dart';
import 'package:flutter_split_project/Views/MainTabbar/Tabs/ExpensesView.dart';
import 'package:flutter_split_project/Views/MainTabbar/Tabs/OverviewView.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Hepler/assets.dart';
import '../../Hepler/colors.dart';
import '../../hive/hive_keys.dart';
import '../../main.dart';
import 'Tabs/DashboardView.dart';
import 'Tabs/TripsView.dart';

class MainTabView extends StatefulWidget {

  static const routeName = "/maintab";

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
            bottomNavigationBar: bottomNavigationBar(),
            body: _tabs()[currentIndex],
          );

  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryVarientColor,
      items: [
        bottomNavigationBarItem(Assets.tab_home, label: "home".tr),
        bottomNavigationBarItem(Assets.tab_trips, label: "trips".tr),
        bottomNavigationBarItem(Assets.tab_expense, label: "expenses".tr),
        bottomNavigationBarItem(Assets.tab_overview, label: "overview".tr),
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        log('index $index');
        setState(() {
          currentIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(img, {label}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        img,
        width: 24,
        height: 24,
      ),
      activeIcon: SvgPicture.asset(
        img,
        width: 24,
        height: 24,
        color: kPrimaryVarientColor,
      ),
      label: label,
    );
  }

  _tabs() {
    return [
      DashboardView(),
      TripsView(),
      ExpensesView(),
      OverviewView(),
    ];
  }
}
