import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Extensions/Colors.dart';

class ButtonWidget extends StatelessWidget {

  final onPressed;

  ButtonWidget({
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
              "Login".toUpperCase(),
              style: TextStyle(fontSize: 14)
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