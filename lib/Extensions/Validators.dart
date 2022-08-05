import 'dart:developer';

import 'package:flutter_split_project/Extensions/internacionalization.dart';



class Validators {
  static String? validateField(String? value, context) {
    if (value == null || value.isEmpty) {
      return "required".tr;
    }
    return null;
  }

  static String? validateFullName(String? value, context) {
    if (value == null || value.isEmpty) {
      return "required".tr;
    }


    return null;
  }

  static String? validateDropdown(var value, context) {
    if (value == null) {
      return "required".tr;
    }
    return null;
  }

  static String? validateOTP(String value, context) {
    if (value.isEmpty) {
      return "otp_is_required".tr;
    } else if (value.length < 4) {
      return "incorrect_otp_enterred".tr;
    }
    return null;
  }

  static String? validateEmail(value, context) {
    Pattern pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = new RegExp(pattern as String);

    if (value.isEmpty) {
      return "required".tr;
    } else if (!regex.hasMatch(value)) {
      return "incorrect_email_entered".tr;
    }
    return null;
  }

  static String? validatePassword(String value, context) {
    if (value.isEmpty) {
      return "required".tr;
    } else if (value.length < 5) {
      return "min_x_char_required".tr;
    }
    return null;
  }

  static String? validateStrongPassword(String value, context) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~+%^.,]).{8,}$');
    if (value.isEmpty) {
      return "required".tr;
    } else {
      if (!regex.hasMatch(value)) {
        return 'enter_valid_password'.tr;
      } else {
        return null;
      }
    }
  }

  static String? validatePhoneNumber(String value, context) {
    log(value.toString());
    Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regex = new RegExp(pattern as String);
    if (value.isEmpty) {
      return "required".tr;
    } else if (!regex.hasMatch(value)) {
      return "Incorrect phone number entered";
    }
    return null;
  }
}
