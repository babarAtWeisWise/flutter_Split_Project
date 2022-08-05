import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PasswordField extends StatefulWidget {
  const PasswordField({
    required this.onFieldSubmitted
  });


  final ValueChanged<String> onFieldSubmitted;

  @override
  _PasswordFieldState createState() => new _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: Center(
              child: new TextFormField(
                obscureText: _obscureText,
                onFieldSubmitted: widget.onFieldSubmitted,
                decoration: new InputDecoration(
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  hintText: "Password",
                  suffixIcon: new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child:
                    new Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}