class UserData {
  int? id;
  String? zohoContactId;
  String? username;
  String? email;
  String? emailVerifiedAt;
  String? firstName;
  String? lastName;
  String? country;
  String? town;
  String? address;
  String? lat;
  String? long;
  String? countryCode;
  String? countryIsoCode;
  String? phoneNo;
  String? avatar;
  String? googleId;
  String? facebookId;
  String? appleId;
  String? healthInsuranceFront;
  String? healthInsuranceBack;
  String? drivingLicenseFront;
  String? drivingLicenseBack;
  String? reepayCustomerHandle;
  String? defaultReepayCardToken;
  String? uniifyCustomerId;
  String? uniifyStatus;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? loginType;
  int? isPhoneNumberVerified;

  UserData(
      {this.id,
      this.zohoContactId,
      this.username,
      this.email,
      this.emailVerifiedAt,
      this.firstName,
      this.lastName,
      this.country,
      this.town,
      this.address,
      this.lat,
      this.long,
      this.countryCode,
      this.countryIsoCode,
      this.phoneNo,
      this.avatar,
      this.googleId,
      this.facebookId,
      this.appleId,
      this.healthInsuranceFront,
      this.healthInsuranceBack,
      this.drivingLicenseFront,
      this.drivingLicenseBack,
      this.reepayCustomerHandle,
      this.defaultReepayCardToken,
      this.uniifyCustomerId,
      this.uniifyStatus,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.loginType,
      this.isPhoneNumberVerified,
      });

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    zohoContactId = json['zoho_contact_id'];
    username = json['username'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    country = json['country'];
    town = json['town'];
    address = json['address'];
    lat = json['lat'];
    long = json['long'];
    countryCode = json['country_code'];
    countryIsoCode = json['country_iso_code'];
    phoneNo = json['phone_no'];
    avatar = json['avatar'];
    googleId = json['google_id'];
    facebookId = json['facebook_id'];
    appleId = json['apple_id'];
    healthInsuranceFront = json['health_insurance_front'];
    healthInsuranceBack = json['health_insurance_back'];
    drivingLicenseFront = json['driving_license_front'];
    drivingLicenseBack = json['driving_license_back'];
    reepayCustomerHandle = json['reepay_customer_handle'];
    defaultReepayCardToken = json['default_reepay_card_token'];
    uniifyCustomerId = json['uniify_customer_id'];
    uniifyStatus = json['uniify_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    isPhoneNumberVerified = json['is_phone_number_verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['zoho_contact_id'] = this.zohoContactId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['country'] = this.country;
    data['town'] = this.town;
    data['address'] = this.address;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['country_code'] = this.countryCode;
    data['country_iso_code'] = this.countryIsoCode;
    data['phone_no'] = this.phoneNo;
    data['avatar'] = this.avatar;
    data['google_id'] = this.googleId;
    data['facebook_id'] = this.facebookId;
    data['apple_id'] = this.appleId;
    data['health_insurance_front'] = this.healthInsuranceFront;
    data['health_insurance_back'] = this.healthInsuranceBack;
    data['driving_license_front'] = this.drivingLicenseFront;
    data['driving_license_back'] = this.drivingLicenseBack;
    data['reepay_customer_handle'] = this.reepayCustomerHandle;
    data['default_reepay_card_token'] = this.defaultReepayCardToken;
    data['uniify_customer_id'] = this.uniifyCustomerId;
    data['uniify_status'] = this.uniifyStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['login_type'] = this.loginType;
    data['is_phone_number_verified'] = this.isPhoneNumberVerified;
    return data;
  }

  @override
  String toString() {
    return 'UserData{id: $id, username: $username, email: $email, emailVerifiedAt: $emailVerifiedAt, firstName: $firstName, lastName: $lastName, country: $country, town: $town, address: $address, countryCode: $countryCode, countryIsoCode: $countryIsoCode, phoneNo: $phoneNo, avatar: $avatar, googleId: $googleId, facebookId: $facebookId, appleId: $appleId, healthInsuranceFront: $healthInsuranceFront, healthInsuranceBack: $healthInsuranceBack, drivingLicenseFront: $drivingLicenseFront, drivingLicenseBack: $drivingLicenseBack, createdAt: $createdAt, reepayCustomerHandle: $reepayCustomerHandle, updatedAt: $updatedAt, lat: $lat, long: $long, defaultReepayCardToken: $defaultReepayCardToken, uniifyCustomerId: $uniifyCustomerId, uniifyStatus: $uniifyStatus}';
  }
}