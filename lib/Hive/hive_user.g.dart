// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveUserAdapter extends TypeAdapter<HiveUser> {
  @override
  final int typeId = 1;

  @override
  HiveUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUser(
      id: fields[0] as int?,
      username: fields[1] as dynamic,
      email: fields[2] as String?,
      firstName: fields[3] as String?,
      lastName: fields[4] as String?,
      city: fields[5] as String?,
      address: fields[6] as String?,
      phoneNo: fields[7] as String?,
      countryCode: fields[8] as String?,
      countryISOCode: fields[9] as String?,
      avatar: fields[10] == null
          ? 'https://firebasestorage.googleapis.com/v0/b/podcastapp-a181d.appspot.com/o/default%2Fdefault_avatar.png?alt=media&token=138b6c95-7e54-4ebe-8192-b5787b96b54e'
          : fields[10] as String?,
      reepayCustomerHandle: fields[11] as String?,
      lat: fields[12] as String?,
      long: fields[13] as String?,
      defaultReepayCardToken: fields[14] as String?,
      uniifyCustomerId: fields[15] as String?,
      uniifyStatus: fields[16] as String?,
      googleId: fields[17] as String?,
      facebookId: fields[18] as String?,
      appleId: fields[19] as String?,
      loginType: fields[20] as String?,
      isPhoneNumberVerified: fields[21] == null ? 0 : fields[21] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveUser obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.lastName)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.address)
      ..writeByte(7)
      ..write(obj.phoneNo)
      ..writeByte(8)
      ..write(obj.countryCode)
      ..writeByte(9)
      ..write(obj.countryISOCode)
      ..writeByte(10)
      ..write(obj.avatar)
      ..writeByte(11)
      ..write(obj.reepayCustomerHandle)
      ..writeByte(12)
      ..write(obj.lat)
      ..writeByte(13)
      ..write(obj.long)
      ..writeByte(14)
      ..write(obj.defaultReepayCardToken)
      ..writeByte(15)
      ..write(obj.uniifyCustomerId)
      ..writeByte(16)
      ..write(obj.uniifyStatus)
      ..writeByte(17)
      ..write(obj.googleId)
      ..writeByte(18)
      ..write(obj.facebookId)
      ..writeByte(19)
      ..write(obj.appleId)
      ..writeByte(20)
      ..write(obj.loginType)
      ..writeByte(21)
      ..write(obj.isPhoneNumberVerified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
