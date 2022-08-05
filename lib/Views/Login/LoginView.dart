

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Views/MainTabbar/MainTabView.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:get/get.dart';
import '../../Extensions/Colors.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0),
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
              Image(
                height: 100,
                width: 100,
                image: AssetImage('assets/small_logo.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Login to SATCAR',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize:24.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
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