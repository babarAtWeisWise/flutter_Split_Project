import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class PasswordField extends StatefulWidget {
  const PasswordField({
    required this.onFieldSubmitted
  });


  final ValueChanged<String> onFieldSubmitted;

  @override
  _PasswordFieldState createState() => new _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30.h,
            child: Center(
              child: new TextFormField(
                obscureText: _obscureText,
                onFieldSubmitted: widget.onFieldSubmitted,
                decoration: new InputDecoration(
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  filled: true,
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Password",
                  suffixIcon: new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child:
                    new Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}