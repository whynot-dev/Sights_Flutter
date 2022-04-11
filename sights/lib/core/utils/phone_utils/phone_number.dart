import 'dart:async';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';


/// Type of phone numbers.
enum PhoneNumberType {
  FIXED_LINE, // : 0,
  MOBILE, //: 1,
  FIXED_LINE_OR_MOBILE, //: 2,
  TOLL_FREE, //: 3,
  PREMIUM_RATE, //: 4,
  SHARED_COST, //: 5,
  VOIP, //: 6,
  PERSONAL_NUMBER, //: 7,
  PAGER, //: 8,
  UAN, //: 9,
  VOICEMAIL, //: 10,
  UNKNOWN, //: -1
}
/// [PhoneNumber] contains detailed information about a phone number
class PhoneNumber {
  /// Either formatted or unformatted String of the phone number
  final String number;

  /// The Country [dialCode] of the phone number
  final String dialCode;

  /// Country [isoCode] of the phone number
  final String isoCode;

  /// [_hash] is used to compare instances of [PhoneNumber] object.
  final int _hash;

  /// Returns an integer generated after the object was initialised.
  /// Used to compare different instances of [PhoneNumber]
  int get hash => _hash;

  Future<bool?> get isValid => PhoneNumberUtil.isValidPhoneNumber(number, isoCode);

  PhoneNumber({
    required this.number,
    required this.dialCode,
    required this.isoCode,
  }) : _hash = 1000 + Random().nextInt(99999 - 1000);

  String getRawNumber() {
    return dialCode + number;
  }

  Future<String?> getFormattedNumber() async {
    return await PhoneNumberUtil.normalizePhoneNumber(
      number,
      isoCode,
    );
  }

  /// Returns [PhoneNumber] which contains region information about
  /// the [phoneNumber] and [isoCode] passed.
  static Future<PhoneNumber> getRegionInfoFromPhoneNumber(
      String phoneNumber, [
        String isoCode = '',
      ]) async {
    RegionInfo regionInfo = await PhoneNumberUtil.getRegionInfo(phoneNumber, isoCode);

    String? internationalPhoneNumber = await PhoneNumberUtil.normalizePhoneNumber(
      phoneNumber,
      regionInfo.isoCode ?? isoCode,
    );

    return PhoneNumber(
      number: internationalPhoneNumber ?? '',
      dialCode: regionInfo.regionPrefix ?? '',
      isoCode: regionInfo.isoCode ?? '',
    );
  }

  /// Returns [PhoneNumberType] which is the type of phone number
  /// Accepts [phoneNumber] and [isoCode] and r
  static Future<PhoneNumberType> getPhoneNumberType(String phoneNumber, String isoCode) async {
    PhoneNumberType type = (await PhoneNumberUtil.getNumberType(phoneNumber, isoCode)) as PhoneNumberType;

    return type;
  }
}
