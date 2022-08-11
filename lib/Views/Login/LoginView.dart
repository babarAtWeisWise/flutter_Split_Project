import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_split_project/Views/Forgot/ForgotPasswordView.dart';
import 'package:flutter_split_project/Views/MainTabbar/MainTabView.dart';
import 'package:get/get.dart';
import '../../Extensions/Colors.dart';
import '../../Widgets/ButtonWidget.dart';
import '../../Widgets/PasswordTextFieldWidget.dart';
import '../../Widgets/TextFieldWidget.dart';
import '../../Widgets/TopHintTextfieldLabelWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';

class LoginView extends StatefulWidget {
  static const String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [HexColor.fromHex('#FFFFFF'), HexColor.fromHex('#EFF1F5')],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(18, 26, 18, 3),
          child: ListView(
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage('assets/small_logo.png'),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Login to SATCAR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              TopHintTextfieldLabelWidget(hint: 'Email'),
              SizedBox(
                height: 6.h,
              ),
              TextFieldWidget(hint: 'Enter Email'),
              SizedBox(
                height: 20.h,
              ),
              TopHintTextfieldLabelWidget(hint: 'Password'),
              SizedBox(
                height: 6.h,
              ),
              PasswordField(onFieldSubmitted: (String value) {
                setState(() {});
              }),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(ForgotPasswordView.routeName);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context)
                        .textTheme
                        .regular
                        .copyWith(fontSize: 12.sp),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              ButtonWidget(
                  title: "login",
                  onPressed: () {
                    Get.offNamed(MainTabView.routeName);
                  })
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
