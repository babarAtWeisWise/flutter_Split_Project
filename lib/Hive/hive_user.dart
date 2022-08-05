import 'package:hive_flutter/adapters.dart';

import '../Hepler/BaseHelper.dart';

part 'hive_user.g.dart';

@HiveType(typeId: 1)
class HiveUser extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  var username;

  @HiveField(2)
  String? email;

  @HiveField(3)
  String? firstName;

  @HiveField(4)
  String? lastName;

  @HiveField(5)
  String? city;

  @HiveField(6)
  String? address;

  @HiveField(7)
  String? phoneNo;

  @HiveField(8)
  String? countryCode;

  @HiveField(9)
  String? countryISOCode;

  @HiveField(10, defaultValue: defaultAvatar)
  String? avatar;

  @HiveField(11)
  String? reepayCustomerHandle;

  @HiveField(12)
  String? lat;

  @HiveField(13)
  String? long;

  @HiveField(14)
  String? defaultReepayCardToken;

  @HiveField(15)
  String? uniifyCustomerId;

  @HiveField(16)
  String? uniifyStatus;

  @HiveField(17)
  String? googleId;

  @HiveField(18)
  String? facebookId;

  @HiveField(19)
  String? appleId;

  @HiveField(20)
  String? loginType;

  @HiveField(21, defaultValue: 0)
  int? isPhoneNumberVerified;

  HiveUser({
    this.id,
    required this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.city,
    this.address,
    this.phoneNo,
    this.countryCode,
    this.countryISOCode,
    this.avatar,
    this.reepayCustomerHandle,
    this.lat,
    this.long,
    this.defaultReepayCardToken,
    this.uniifyCustomerId,
    this.uniifyStatus,
    this.googleId,
    this.facebookId,
    this.appleId,
    this.loginType,
    this.isPhoneNumberVerified,
  });

  @override
  String toString() {
    return 'HiveUser{id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, city: $city, address: $address, phoneNo: $phoneNo, countryCode: $countryCode, countryISOCode: $countryISOCode, avatar: $avatar, reepayCustomerHandle: $reepayCustomerHandle, lat: $lat, long: $long, defaultReepayCardToken: $defaultReepayCardToken, uniifyCustomerId: $uniifyCustomerId, uniifyStatus: $uniifyStatus, googleId: $googleId, facebookId: $facebookId, appleId: $appleId}';
  }
}
