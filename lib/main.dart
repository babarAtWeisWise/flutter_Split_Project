import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Views/Login/LoginView.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hive/hive.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'Binding/get_pages.dart';
import 'Extensions/Colors.dart';
import 'Hepler/languages.dart';
import 'Hepler/theme.dart';


late Box box;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(570.67, 1234),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        smartManagement: SmartManagement.onlyBuilder, //here
        translations: Languages(),
        locale:  Get.locale ?? Locale('en', 'US'),
        theme: Styles.themeData(context),
        getPages: GetPageList.pages,

        ///EasyLoading
        builder: EasyLoading.init(
          builder: (context, widget) {
            ///add this line
            ScreenUtil.init(context);
            return MediaQuery(
              ///Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        ),
        initialRoute:  LoginView.routeName ,
      ),
    );
  }
}










