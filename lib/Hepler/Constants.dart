
import 'package:flutter/material.dart';
import 'package:flutter_split_project/Extensions/internacionalization.dart';

import 'colors.dart';

class Constants {


  static List<String> sample_list = [
    'employed'.tr,
    'self_employed'.tr,
    'public_services'.tr,
    'student'.tr,
    'other_things'.tr,
  ];


  static var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: Colors.white,
    ),
  );

  static var focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: kPrimaryColor,
    ),
  );

  static var errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );


}