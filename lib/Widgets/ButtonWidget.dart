import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Extensions/Colors.dart';

class ButtonWidget extends StatelessWidget {

  final onPressed;
  double height;
  String title;

  ButtonWidget({
    this.onPressed,
    this.height = 40,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height.h,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
              title.toUpperCase(),
              style: TextStyle(fontSize: 14.sp)
          ),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(HexColor.fromHex('#00ADEF')),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: HexColor.fromHex('#00ADEF'))
                  )
              )
          ),
      ),
    );
  }
}