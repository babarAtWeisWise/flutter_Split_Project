import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopHintTextfieldLabelWidget extends StatelessWidget {
  TopHintTextfieldLabelWidget({required this.hint});
  String hint;
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
              color: Colors.black45,
              fontSize:12.0,
            ),
          ),
        ],
      ),
    );
  }
}