
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Views/Login/LoginView.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'Binding/get_pages.dart';
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










