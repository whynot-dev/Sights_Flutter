import 'package:json_annotation/json_annotation.dart';
import 'package:sights/domain/entities/network/address.dart';
import 'package:sights/domain/entities/network/document.dart';
import 'package:sights/domain/entities/network/user.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile({
    required this.userVerified,
    required this.hasPassword,
    required this.emailVerified,
    required this.phone,
    required this.phoneVerified,
    this.email,
    this.user,
    required this.userVerifiedStatus,
    this.photo,
    this.documents,
    this.address,
  });

  bool userVerified;
  bool hasPassword;
  bool emailVerified;
  String phone;
  bool phoneVerified;
  String? email;
  User? user;
  String userVerifiedStatus;
  String? photo;
  List<Document>? documents;
  Address? address;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
