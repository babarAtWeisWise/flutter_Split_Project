


import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../Hive/hive_keys.dart';
import '../Hive/hive_user.dart';
import '../Models/user_data.dart';
import '../main.dart';
import 'colors.dart';

const String defaultAvatar = "https://firebasestorage.googleapis.com/v0/b/podcastapp-a181d.appspot.com/o/default%2Fdefault_avatar.png?alt=media&token=138b6c95-7e54-4ebe-8192-b5787b96b54e";

class BaseHelper {
  static const String reepayPaymentCardPath = "https://admin.reepay.com/images/creditcard_logo/";

  static setStatusBarColor(color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
    ));
  }

  static hideKeypad(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static updateLocalUser(UserData userData) {
    box.put(HiveKeys.avatar, userData.avatar);
    box.put(
        HiveKeys.user,
        HiveUser(
          id: userData.id,
          username: userData.username,
          email: userData.email,
          firstName: userData.firstName,
          lastName: userData.lastName,
          city: userData.town,
          address: userData.address,
          lat: userData.lat,
          long: userData.long,
          countryCode: userData.countryCode,
          countryISOCode: userData.countryIsoCode,
          phoneNo: userData.phoneNo,
          appleId:userData.appleId,
          avatar: userData.avatar,
          facebookId: userData.facebookId,
          googleId: userData.googleId,
          reepayCustomerHandle: userData.reepayCustomerHandle,
          defaultReepayCardToken: userData.defaultReepayCardToken,
          uniifyCustomerId: userData.uniifyCustomerId,
          uniifyStatus: userData.uniifyStatus,
          loginType: userData.loginType,
          isPhoneNumberVerified: userData.isPhoneNumberVerified,
        ));
  }


  static showSnackBar(msg, {color, button}) {
    Get.showSnackbar(GetSnackBar(
      message: msg,
      borderRadius: 5,
      barBlur: 5,
      backgroundColor: color ?? kPrimaryColor,
      margin: EdgeInsets.all(5),
      duration: Duration(milliseconds: 2500),
      mainButton: button,

    ));
  }



  static getReepayCardLogo(cardType) {
    return cardType == null ? null : '$reepayPaymentCardPath$cardType.png';
  }


  static int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  static bool isCurrentMonth(DateTime date) {
    return date.month == DateTime.now().month;
  }

  static String splitFirstName(String text) {
    var v = text.split(' ');
    if (v.length == 1) {
      return v[0];
    } else if (v.length == 2) {
      return v[0];
    } else if (v.length >= 3) {
      return v[0] + ' ' + v[1];
    }
    return '';
  }

  static String splitLastName(String text) {
    String value = ' ';
    var v = text.split(' ');
    if (v.length == 1) {
      return value;
    } else if (v.length == 2) {
      value = v[1];
    } else if (v.length >= 3) {
      for (int i = 2; i < v.length; i++) {
        value = value + v[i] + ' ';
      }
    }
    return value;
  }
}