import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  TextFieldWidget({required this.hint,this.obscureText = false});
  String hint;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            color: Colors.transparent,
            child: Center(
              child: TextField(
                obscureText: obscureText,
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    hintText: hint,
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}