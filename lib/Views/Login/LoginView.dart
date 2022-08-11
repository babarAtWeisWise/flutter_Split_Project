import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Views/MainTabbar/MainTabView.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:get/get.dart';
import '../../Extensions/Colors.dart';
import '../../Hepler/assets.dart';
import '../../Widgets/ButtonWidget.dart';
import '../../Widgets/PasswordTextFieldWidget.dart';
import '../../Widgets/TextFieldWidget.dart';
import '../../Widgets/TopHintTextfieldLabelWidget.dart';

class LoginView extends StatefulWidget {
  static const String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  HexColor.fromHex('#FFFFFF'),
                  HexColor.fromHex('#EFF1F5')
                ],
              )),
          child: ListView(
            children: [
              SvgPicture.asset(
                Assets.app_logo
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left:22.0,right: 20.0),
                child: Text('Login to your account',
                    style: Theme.of(context)
                        .textTheme
                        .medium
                        .copyWith(fontSize: 20.sp)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left:22.0,right: 20.0),
                child: TopHintTextfieldLabelWidget(hint: 'Email'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: TextFieldWidget(hint: 'Enter Email'),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left:22.0,right: 20.0),
                child: TopHintTextfieldLabelWidget(hint: 'Password'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:22.0,right: 20.0),
                child: PasswordField(
                    onFieldSubmitted: (String value) {
                      setState(() {

                      });
                    }
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {

                      },
                      child: TopHintTextfieldLabelWidget(hint: 'Forgot Password?'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: ButtonWidget(
                    title: "login",
                    onPressed: () {
                      // showTopSnackBar(
                      //   context,
                      //   CustomSnackBar.error(
                      //     message:
                      //     "Something went wrong. Please check your credentials and try again",
                      //   ),
                      // );
                      Get.offNamed(MainTabView.routeName);
                    }
                ),
              )
            ],
          ),
        ),
      ) ,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}