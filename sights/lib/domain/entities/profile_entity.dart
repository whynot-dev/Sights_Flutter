import 'package:sights/domain/entities/user_entity.dart';
import 'package:sights/domain/enums/profile_confirm_type.dart';

import 'address_entity.dart';
import 'document_entity.dart';
import 'network/profile.dart';

class ProfileEntity {
  ProfileEntity({
    required this.userVerified,
    required this.profileConfirmType,
    required this.hasPassword,
    required this.emailVerified,
    required this.phone,
    required this.phoneVerified,
    this.email,
    this.user,
    this.imageUrl,
    this.documents,
    this.address,
  });

  bool userVerified;
  ProfileConfirmType profileConfirmType;
  bool hasPassword;
  bool emailVerified;
  String phone;
  bool phoneVerified;
  String? email;
  UserEntity? user;
  String? imageUrl;
  List<DocumentEntity>? documents;
  AddressEntity? address;

  factory ProfileEntity.fromResponse(Profile response) => ProfileEntity(
        profileConfirmType: _getProfileConfirmType(response.userVerifiedStatus),
        userVerified: response.userVerified,
        hasPassword: response.hasPassword,
        emailVerified: response.emailVerified,
        phone: response.phone,
        phoneVerified: response.phoneVerified,
        email: response.email,
        user: response.user != null ? UserEntity.fromResponse(response.user!) : null,
        imageUrl: response.photo,
        documents: _getDocuments(response),
        address: response.address != null ? AddressEntity.fromResponse(response.address!) : null,
      );

  static ProfileConfirmType _getProfileConfirmType(String status) {
    switch (status) {
      case 'wait':
        return ProfileConfirmType.notConfirmed;
      case 'progress':
        return ProfileConfirmType.inProcessing;
      case 'done':
        return ProfileConfirmType.confirmed;
      case 'fail':
        return ProfileConfirmType.confirmationError;
    }
    return ProfileConfirmType.notConfirmed;
  }

  static dynamic _getDocuments(Profile response) {
    List<DocumentEntity> media = [];
    var data = response.documents;
    if (data != null) {
      data.forEach((item) {
        media.add(DocumentEntity.fromResponse(item));
      });
      return media;
    }
    return null;
  }
}
