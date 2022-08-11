import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';
import 'package:flutter_split_project/Widgets/ButtonWidget.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../Extensions/Colors.dart';
import '../../Widgets/TextFieldWidget.dart';
import '../../Widgets/TopHintTextfieldLabelWidget.dart';
import '../../Widgets/custom_appbar.dart';

class ForgotPasswordView extends StatefulWidget {
  static const String routeName = "/forgot_password";

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('forgot_password'.tr,
            style:
                Theme.of(context).textTheme.medium.copyWith(fontSize: 18.sp)),
        centerTitle: true,
      ),
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [HexColor.fromHex('#FFFFFF'), HexColor.fromHex('#EFF1F5')],
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 26, 18, 3),
          child: ListView(
            children: [
              Text('please_enter_email'.tr,style: Theme.of(context).textTheme.regular.copyWith(fontSize: 14.0,color: Color(
                  0x66171930),),),
              SizedBox(
                height: 24.h,
              ),
              TopHintTextfieldLabelWidget(hint: 'Email'),
              SizedBox(
                height: 6.h,
              ),
              TextFieldWidget(hint: 'Enter Email'),
              SizedBox(
                height: 28.h,
              ),
              ButtonWidget(
                  title: "send".toLowerCase().tr,
                  onPressed: () {
                    showTopSnackBar(
                      context,
                      CustomSnackBar.info(
                        message:
                        "Please check your email!",
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
