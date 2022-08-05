

import 'package:flutter_split_project/Models/user_data.dart';

class LoginModel {
  bool? success;
  Data? data;
  String? message;

  LoginModel({this.success, this.data, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? token;
  UserData? userData;
  String? otpCode;

  Data({this.token, this.userData});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userData = json['user_data'] != null ? new UserData.fromJson(json['user_data']) : null;
    otpCode = json['otp_code'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    data['otp_code'] = this.otpCode;

    return data;
  }
}
