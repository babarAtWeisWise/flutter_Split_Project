import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {

  TextFieldWidget({required this.hint,this.obscureText = false,this.keyboardType = TextInputType.text,this.maxLines = 1,this.height = 30,this.padding = 8});
  String hint;
  bool obscureText;
  TextInputType keyboardType;
  int maxLines;
  double height;
  double padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(padding),
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height.h,
            color: Colors.transparent,
            child: Center(
              child: TextField(
                obscureText: obscureText,
                keyboardType:keyboardType,
                maxLines: maxLines,
                autofocus: false,
                decoration: InputDecoration(
                    alignLabelWithHint:true,

                    fillColor: Colors.transparent,
                    hintText: hint,
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(padding, padding, padding, padding)
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}