import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopHintTextfieldLabelWidget extends StatelessWidget {
  TopHintTextfieldLabelWidget({required this.hint,this.color = Colors.black45,this.size = 12 });
  String hint;
  Color color;
  double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            hint,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.normal,
              color: color ,
              fontSize:size.sp,
            ),
          ),
        ],
      ),
    );
  }
}