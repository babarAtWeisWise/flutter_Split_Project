import 'dart:ui';
import 'package:flutter/material.dart';

extension CustomTextStyle on TextTheme {
  TextStyle get extraBold => const TextStyle(fontWeight: FontWeight.w800);
  TextStyle get bold => const TextStyle(fontWeight: FontWeight.w700);
  TextStyle get semibold => const TextStyle(fontWeight: FontWeight.w600);
  TextStyle get medium => const TextStyle(fontWeight: FontWeight.w500);
  TextStyle get regular => const TextStyle(fontWeight: FontWeight.w400);
  TextStyle get thin => const TextStyle(fontWeight: FontWeight.w300);
  TextStyle get light => const TextStyle(fontWeight: FontWeight.w200);
  TextStyle get extra_light => const TextStyle(fontWeight: FontWeight.w100);

}