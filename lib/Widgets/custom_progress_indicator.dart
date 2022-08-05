import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../Hepler/colors.dart';

void showLoader({msg}) {
  EasyLoading.show(status: msg ?? 'loading'.tr, dismissOnTap: true, indicator: customProgressIndicator());
}

void hideLoader() {
  EasyLoading.dismiss();
}

Widget customProgressIndicator() {
  return CircularProgressIndicator.adaptive(
    valueColor: AlwaysStoppedAnimation<Color>(kPrimaryVarientColor),
  );
}
