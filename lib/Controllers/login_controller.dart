import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Hepler/BaseHelper.dart';
import '../Hepler/colors.dart';
import '../Hive/hive_keys.dart';
import '../Models/login_model.dart';
import '../Networking/api_paths.dart';
import '../Networking/api_service.dart';
import '../Widgets/custom_progress_indicator.dart';
import '../main.dart';

class LoginController extends GetxController {
  var email = TextEditingController();
  var password = TextEditingController();
  var phone = TextEditingController();

  var showPassword = true.obs;
  final formKeyEmail = GlobalKey<FormState>();
  final formKeyPhone = GlobalKey<FormState>();

  LoginModel? loginModel;

  Future<bool> login(context, data, {phoneNumber}) async {
    showLoader();
    var response = await ApiService.request(ApiPaths.login, method: RequestMethod.POST, data: data);
    if (response != null) loginModel = LoginModel.fromJson(response);
    hideLoader();

    if (loginModel == null) {
      BaseHelper.showSnackBar('went_wrong'.tr);
      return false;
    }

    if (loginModel!.success!) {
      //* check if logged in by phone but phone num is not verified

        box.put(HiveKeys.loginCheck, true);
        box.put(HiveKeys.authToken, "Bearer " + loginModel!.data!.token!);
        //save user in hive to access locally
        BaseHelper.updateLocalUser(loginModel!.data!.userData!);
        email.clear();
        password.clear();
        phone.clear();
        return true;

    } else
      // BaseHelper.showSnackBar(loginModel!.message!, button: (data['mobile_no']!=null && loginModel?.data?.userData?.isPhoneNumberVerified == 0) ? TextButton(onPressed: () {}, child: Text('Verify Now!')) : null);
      BaseHelper.showSnackBar(loginModel!.message!);

    return false;
  }


}
