import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Extensions/Colors.dart';

class OutlineButtonWidget extends StatelessWidget {

  final onPressed;
  double height;
  String title;

  OutlineButtonWidget({
    this.onPressed,
    this.height = 50,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height.h,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 14.sp)
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black38),
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