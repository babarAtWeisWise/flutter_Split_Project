import 'package:flutter_split_project/Controllers/login_controller.dart';
import 'package:flutter_split_project/Controllers/trips_controller.dart';
import 'package:flutter_split_project/Views/Login/LoginView.dart';
import 'package:flutter_split_project/Views/MainTabbar/MainTabView.dart';
import 'package:get/get.dart';

import '../Controllers/dashboard_controller.dart';


class GetPageList {
  static List<GetPage> pages = [

    GetPage(
      name: LoginView.routeName,
      page: () => LoginView(),
      binding: BindingsBuilder(() => Get.lazyPut(() => LoginController())),
    ),
    GetPage(
      name: MainTabView.routeName,
      page: () => MainTabView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => DashboardController());
        Get.lazyPut(() => TripsController());
        // Get.lazyPut(() => HelpController());
        // Get.lazyPut(() => ProfileController());
        // Get.lazyPut(() => PresentController());
        // Get.lazyPut(() => FutureTabController());
        // Get.lazyPut(() => PastTabController());
        // Get.lazyPut(() => RatingController());
        // Get.lazyPut(() => SettingsController());
      }),
    ),
  ];
}